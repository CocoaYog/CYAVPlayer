//
//  CYPlayerView.m
//  CYPlayer
//
//  Created by CocoaYog on 2017/9/14.
//  Copyright © 2017年 CocoaYog. All rights reserved.
//

#import "CYPlayerView.h"

#import <Masonry.h>

@interface CYPlayerView ()
@property (nonatomic,strong)AVPlayerLayer *playerLayer; // 播放视图层
@property (nonatomic,strong)AVPlayer *player; // 播放器
@property (nonatomic,strong)AVPlayerItem *playingItem; // 当前正在播放的item
@property (nonatomic,copy)NSString *sourceUrlString; // 记录当前播放的item的url


@end

@implementation CYPlayerView




-(instancetype)initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){
    
        [self.layer addSublayer:self.playerLayer];
        self.playerLayer.frame = frame;
        self.playerLayer.backgroundColor = [UIColor blackColor].CGColor;
    }
    return self;
}

-(AVPlayerLayer *)playerLayer{
    if(!_playerLayer){
        _playerLayer = [AVPlayerLayer playerLayerWithPlayer:self.player];
        _playerLayer.videoGravity = AVLayerVideoGravityResizeAspect;
    }
    return _playerLayer;
}

-(AVPlayer *)player{
    if(!_player){
        _player = [AVPlayer playerWithPlayerItem:nil];
    }
    return _player;
}

-(AVPlayerItem *)setVideoUrl:(NSURL *)url{
    AVPlayerItem *item = [[AVPlayerItem alloc] initWithURL:url];
    
    return item;
}

-(AVPlayerItem *)playingItem{
    return [[AVPlayerItem alloc] initWithURL:[NSURL URLWithString:@"http://video.uigreat.com/94fe3b45d1a04304aaf3605a50a2e621/f9e6ae15f9944e5ea3db8b90da763d08-5287d2089db37e62345123a1be272f8b.mp4"]];
}


-(void)play{
    if(self.player.rate == 0){
        [self.player play];
    }
}

-(void)pause{
    if(self.player.rate == 1){
        [self.player pause];
    }
    
}

-(void)playWithURLString:(NSString *)urlString{
    [self pause];
    _playingItem  = [[AVPlayerItem alloc] initWithURL:[NSURL URLWithString:urlString]];
    [_player replaceCurrentItemWithPlayerItem:_playingItem];
    [self play];
}

-(void)seekToTime:(NSInteger)second{
    
    [self pause];
    
    [self.player seekToTime:CMTimeMake(second, 1)];
    
}











/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
