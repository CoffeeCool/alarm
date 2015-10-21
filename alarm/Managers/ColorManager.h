//
//  ColorManager.h
//  颜色管理类
//
//  Created by Coffee on 15/10/20.
//
//

#import <UIKit/UIKit.h>
#import "SingletonTemplate.h"

@interface ColorManager : NSObject

SYNTHESIZE_SINGLETON_FOR_HEADER(ColorManager)

- (NSArray*)getRandomCGColorArray;



@end
