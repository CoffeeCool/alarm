//
//  TimerManager.m
//  
//
//  Created by Coffee on 15/10/21.
//
//

#import "TimerManager.h"
#import <objc/runtime.h>

@interface TimerManager()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation TimerManager

SYNTHESIZE_SINGLETON_FOR_CLASS(TimerManager)

static char blockKey;

#pragma mark - timer manager
//启动计时器
- (void)scheduledTimerWithTimeInterval:(NSTimeInterval)timeInterval
                   completionWithBlock:(ActionBlock)block
{
    objc_setAssociatedObject(self, &blockKey, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    _timer = [NSTimer scheduledTimerWithTimeInterval:timeInterval
                                              target:self
                                            selector:@selector(onTimerScheduled)
                                            userInfo:nil
                                             repeats:YES];
}

//移除计时器
- (void)stopScheduledTimer
{
    [_timer invalidate];
}


#pragma event response
- (void)onTimerScheduled
{
    ActionBlock block = (ActionBlock)objc_getAssociatedObject(self, &blockKey);
    if (block) {
        block();
    }
}


@end
