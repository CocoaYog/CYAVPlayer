//
//  CYPlayerView.h
//  CYPlayer
//
//  Created by CocoaYog on 2017/9/14.
//  Copyright © 2017年 CocoaYog. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface CYPlayerView : UIView


-(AVPlayerItem *)setVideoUrl:(NSURL *)url;

-(void)play;
-(void)playWithURLString:(NSString *)urlString;
-(void)pause;
-(void)seekToTime:(NSInteger )second;

@end
