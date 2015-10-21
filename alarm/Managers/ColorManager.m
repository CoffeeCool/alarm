//
//  ColorManager.m
//  
//
//  Created by Coffee on 15/10/20.
//
//

#import "ColorManager.h"
#import "HSBColorModel.h"

@implementation ColorManager

SYNTHESIZE_SINGLETON_FOR_CLASS(ColorManager)

#pragma mark - manager get methods

- (NSArray *)getRandomCGColorArray
{
    NSMutableArray *colors = [[NSMutableArray alloc] init];
    
    HSBColorModel *hueModel = [self getColorModel];
    
    for (NSInteger i = hueModel.hue + 20; i > hueModel.hue; i -= 1) {
        UIColor *color = [UIColor colorWithHue:1.0 * i / 360.0
                                    saturation:hueModel.saturation
                                    brightness:hueModel.brightness
                                         alpha:1.0];
        [colors addObject:(id)[color CGColor]];
    }
    
    return colors;
}

- (HSBColorModel *)getColorModel
{
    NSMutableArray *colorArray = [[NSMutableArray alloc] init];
    for (NSInteger i = 0; i < 5; i++) {
        HSBColorModel *colorModel = [[HSBColorModel alloc] init];
        //临时
        colorModel.hue = 180+i*20;
        colorModel.saturation = 1.0;
        colorModel.brightness = 1.0;
        [colorArray addObject:colorModel];
    }
    
    return (HSBColorModel *)colorArray[arc4random()%(colorArray.count)];
}



@end
