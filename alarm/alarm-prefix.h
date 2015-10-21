//
//  alarm-prefix.h
//  alarm
//
//  Created by Coffee on 15/10/21.
//  Copyright (c) 2015年 webigstudio. All rights reserved.
//

#ifndef alarm_alarm_prefix_h
#define alarm_alarm_prefix_h
// 屏幕的宽、高
#define kScreen_Height [UIScreen mainScreen].bounds.size.height
#define kScreen_Width [UIScreen mainScreen].bounds.size.width

//RGB十六进制
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

//字符串
#define GetStringDefaultEmpty(string) (string && [string isKindOfClass:[NSString class]] && [string length] > 0 ? string : @"")
#define IsStringNilOrEmpty(string)   ((string == nil) || ([string isKindOfClass:[NSString class]] && [string length] == 0))
#define IsStringNotNil(string) ((string != nil) && [string isKindOfClass:[NSString class]] && [string length] > 0)

//比较字符串是否相等（忽略大小写），相等的话返回YES，否则返回NO
#define AnydoorCompareString(thing1, thing2) (thing1 && [thing1 isKindOfClass:[NSString class]] && thing2 && [thing2 isKindOfClass:[NSString class]] && [thing1 compare:thing2 options:NSCaseInsensitiveSearch] == NSOrderedSame)
#endif
