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
@property (nonatomic,strong)CYPlayerView *playerView;
@property (nonatomic,strong)UITextField *videoUrlInput;
@property (nonatomic,strong)UITextField *timeInput;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.playerView = [[CYPlayerView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.width / 16 *  9)];
    [self.view addSubview:self.playerView];
    
    UIButton *playButton = [[UIButton alloc] initWithFrame:CGRectMake(50, self.view.bounds.size.width / 16 * 9  + 30, 50 ,40)];
    [playButton setTitle:@"Play" forState:UIControlStateNormal];
    [playButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [playButton addTarget:self action:@selector(handlerPlay:) forControlEvents:UIControlEventTouchUpInside];
   
    
    UIButton *pauseButton = [[UIButton alloc] initWithFrame:CGRectMake(120, self.view.bounds.size.width / 16 * 9  + 30, 50 ,40)];
    [pauseButton setTitle:@"Pause" forState:UIControlStateNormal];
    [pauseButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [pauseButton addTarget:self action:@selector(handlerPause:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *seekButton = [[UIButton alloc] initWithFrame:CGRectMake(190, self.view.bounds.size.width / 16 * 9  + 30, 50 ,40)];
    [seekButton setTitle:@"Seek" forState:UIControlStateNormal];
    [seekButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [seekButton addTarget:self action:@selector(handlerSeek:) forControlEvents:UIControlEventTouchUpInside];
    
    self.timeInput = [[UITextField alloc] initWithFrame:CGRectMake(260, self.view.bounds.size.width / 16 * 9  + 30, 50 ,40)];
    self.timeInput.placeholder = @"";
    
    self.videoUrlInput = [[UITextField alloc] initWithFrame:CGRectMake(50, self.view.bounds.size.width / 16 * 9  + 80, 200,30)];
    self.videoUrlInput.placeholder = @"输入新的视频地址";
    
    UIButton *newPlayButton = [[UIButton alloc] initWithFrame:CGRectMake(75, self.view.bounds.size.width / 16 * 9  + 130 , 100 ,40)];
    [newPlayButton setTitle:@"NewPlay" forState:UIControlStateNormal];
    [newPlayButton addTarget:self action:@selector(handlerNewPlay:) forControlEvents:UIControlEventTouchUpInside];
    [newPlayButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    
    [self.view addSubview:playButton];
    [self.view addSubview:pauseButton];
    [self.view addSubview:seekButton];
    [self.view addSubview:newPlayButton];
    [self.view addSubview:self.timeInput];
    [self.view addSubview:self.videoUrlInput];
    
    

    
    
}

-(void)handlerPlay:(UIButton *)button{
    [self.playerView play];
}

-(void)handlerPause:(UIButton *)button{
    [self.playerView pause];
}

-(void)handlerSeek:(UIButton *)button{
    [self.playerView seekToTime:(NSInteger)self.timeInput.text];
}

-(void)handlerNewPlay:(UIButton *)button{
    [self.playerView playWithURLString:self.videoUrlInput.text];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
