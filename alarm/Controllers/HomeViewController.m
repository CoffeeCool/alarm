//
//  HomeViewController.m
//  alarm
//
//  Created by Coffee on 15/10/21.
//  Copyright © 2015年 webigstudio. All rights reserved.
//

#import "HomeViewController.h"
#import "RecordingCircleOverlayView.h"

@interface HomeViewController ()

@property (nonatomic, strong) RecordingCircleOverlayView *recordingCircleOverlayView;

@end

@implementation HomeViewController

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.recordingCircleOverlayView];
}


- (void)viewWillAppear:(BOOL)animated
{
    [self.recordingCircleOverlayView setCenter:CGPointMake(kScreen_Width/2, 64 + kScreen_Width/2)];
}

#pragma getters and setters
- (RecordingCircleOverlayView *)recordingCircleOverlayView
{
    if (!_recordingCircleOverlayView) {
        _recordingCircleOverlayView = [[RecordingCircleOverlayView alloc] initWithFrame:CGRectMake(0, 0, kScreen_Width/2, kScreen_Width/2) strokeWidth:7.0f insets:UIEdgeInsetsMake(0, 0, 0, 0)];
        _recordingCircleOverlayView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
        _recordingCircleOverlayView.duration = 10.f;
    }
    return _recordingCircleOverlayView;
}


@end
