//
//  ViewController.m
//  CYPlayer
//
//  Created by CocoaYog on 2017/9/13.
//  Copyright © 2017年 CocoaYog. All rights reserved.
//

#import "ViewController.h"
#import "CYPlayerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    CYPlayerView *playerView = [[CYPlayerView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.width / 16 *  9)];
    
    [self.view addSubview:playerView];
    [playerView play];

    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
