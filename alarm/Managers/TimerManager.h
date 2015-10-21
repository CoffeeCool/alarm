//
//  TimerManager.h
//  
//
//  Created by Coffee on 15/10/21.
//
//

#import <Foundation/Foundation.h>
#import "SingletonTemplate.h"

typedef void (^ActionBlock)();

@interface TimerManager : NSObject

SYNTHESIZE_SINGLETON_FOR_HEADER(TimerManager)
//启动计时器
- (void)scheduledTimerWithTimeInterval:(NSTimeInterval)timeInterval
                   completionWithBlock:(ActionBlock)block;
//移除计时器
- (void)stopScheduledTimer;
@end
