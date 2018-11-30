//
//  ViewController.m
//  SectorProgressView
//
//  Created by caishilin on 2018/11/29.
//  Copyright © 2018 caishilin. All rights reserved.
//

#import "ViewController.h"
#import "BZSectorProgressView.h"

@interface ViewController ()

@property (nonatomic, strong) BZSectorProgressView *progressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.progressView = [[BZSectorProgressView alloc] init];
//    self.progressView.circleSideWidth = 10;
//    self.progressView.sectorRadius = 20;
    self.progressView.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:self.progressView];
    
    UISlider *slider = [[UISlider alloc] init];
    slider.frame = CGRectMake(100, 250, 200, 40);
    slider.minimumValue = 0;
    slider.maximumValue = 1;
    [self.view addSubview:slider];
    [slider addTarget:self action:@selector(progressDidChange:) forControlEvents:UIControlEventValueChanged];
}

- (void)progressDidChange:(UISlider *)sender {
    self.progressView.progress = sender.value;
}

@end
