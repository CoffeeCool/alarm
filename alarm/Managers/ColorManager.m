//
//  ColorManager.m
//  
//
//  Created by Coffee on 15/10/20.
//
//

#import "ColorManager.h"

@interface ColorManager()
@property (nonatomic, strong) NSMutableArray* hueArray;
@end

@implementation ColorManager
SYNTHESIZE_SINGLETON_FOR_CLASS(ColorManager)

#pragma mark - manager get methods

- (NSArray*)getRandomCGColorArray
{
    NSMutableArray *colors = [NSMutableArray array];
    for (NSInteger hue = [self getEndHue] + 20; hue > [self getEndHue]; hue -= 1) {
        UIColor *color = [UIColor colorWithHue:1.0 * hue / 360.0
                                    saturation:1.0
                                    brightness:1.0
                                         alpha:1.0];
        [colors addObject:(id)[color CGColor]];
    }
    return colors;
}

- (NSInteger)getEndHue
{
    return 180;
}

#pragma mark - getters and setters



@end
