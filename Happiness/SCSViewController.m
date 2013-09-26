//
//  SCSViewController.m
//  Happiness
//
//  Created by Anson Yu Wang on 13-9-25.
//  Copyright (c) 2013年 Anson Yu Wang. All rights reserved.
//

#import "SCSViewController.h"
#import "SCSCircleView.h"

@interface SCSViewController ()
@property (weak, nonatomic) IBOutlet SCSCircleView *faceView;

@end

@implementation SCSViewController
- (IBAction)adjustScale:(UISlider *)sender {
    CGFloat scale = sender.value;
    self.faceView.transform = CGAffineTransformMakeScale(scale, scale);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
