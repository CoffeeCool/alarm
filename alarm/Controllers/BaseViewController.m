//
//  BaseViewController.m
//  
//
//  Created by Coffee on 15/10/18.
//
//

#import "BaseViewController.h"
#import "BlurredColorBackgroundView.h"
@interface BaseViewController ()

@property (nonatomic, strong) BlurredColorBackgroundView* backgroundView;

@end

@implementation BaseViewController

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.backgroundView];
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

#pragma mark - getters and setters

- (BlurredColorBackgroundView *)backgroundView
{
    if (!_backgroundView) {
        _backgroundView = [[BlurredColorBackgroundView alloc] init];
    }
    return _backgroundView;
}







@end
