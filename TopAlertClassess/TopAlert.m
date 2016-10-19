//
//  TopAlert.m
//  TopAlert
//
//  Created by roycms on 2016/10/19.
//  Copyright © 2016年 roycms. All rights reserved.
//

#import "TopAlert.h"

@interface TopAlert()

@property(nonatomic,strong)UILabel *headerTitleLabel;
@property(nonatomic,strong)UILabel *contentTextLabel;
@property(nonatomic,strong)NSTimer *timer;

@end
@implementation TopAlert

- (instancetype)initWithStyle:(UIColor*)color {
    self = [super init];
    if (self) {
        [self initWindow:color];
    }
    return self;
}

-(void)initWindow:(UIColor*)color{
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    [window addSubview:self];
    [self addSubview:self.headerTitleLabel];
    [self addSubview:self.contentTextLabel];
    [self setBackgroundColor:color];
    [self mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(window);
        make.width.equalTo(window);
    }];
    [self.headerTitleLabel setTextColor:[UIColor whiteColor]];
    [self.contentTextLabel setFont:[UIFont systemFontOfSize:14]];
    [self.contentTextLabel setTextColor:[UIColor whiteColor]];
    [self.contentTextLabel sizeToFit];
    [self.headerTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(10);
        make.bottom.equalTo(self).offset(-8);
        make.left.equalTo(self).offset(10);
        make.right.equalTo(self).offset(-10);
        
    }];
    [self.contentTextLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(44);
        make.bottom.equalTo(self).offset(-8);
        make.left.equalTo(self).offset(10);
        make.right.equalTo(self).offset(-10);
    }];
    [self.contentTextLabel setAlpha:0];
    self.transform = CGAffineTransformMakeTranslation(0, -80);
    [UIView animateWithDuration:0.35 animations:^{
        self.transform = CGAffineTransformMakeTranslation(0, 0);
        [self.contentTextLabel setAlpha:1];
    }];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:2.6 target:self selector:@selector(TopAlertAnimateSenior) userInfo:nil repeats:NO];
}
-(void)TopAlertAnimateSenior{
    [UIView animateWithDuration:0.35 animations:^{
        self.transform = CGAffineTransformMakeTranslation(0, -80);
        [self.contentTextLabel setAlpha:0];
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

-(void)setHeaderTitle:(NSString *)headerTitle{
    [self.headerTitleLabel setText:headerTitle];
}
-(void)setContentText:(NSString *)contentText{
    NSMutableAttributedString * attributedString = [[NSMutableAttributedString alloc] initWithString:contentText];
    NSMutableParagraphStyle * paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:5];
    paragraphStyle.alignment = NSTextAlignmentCenter;
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [contentText length])];
    [self.contentTextLabel setAttributedText:attributedString];
}

-(UILabel*)headerTitleLabel {
    if (_headerTitleLabel == nil) {
        _headerTitleLabel = [[UILabel alloc]init];
        [_headerTitleLabel setFont:[UIFont systemFontOfSize:15]];
        [_headerTitleLabel setTextAlignment:NSTextAlignmentCenter];
        [_headerTitleLabel setTextColor:RGB16(0X3d3d3d)];
    }
    return _headerTitleLabel;
}

-(UILabel*)contentTextLabel {
    if (_contentTextLabel == nil) {
        _contentTextLabel = [[UILabel alloc]init];
        [_contentTextLabel setFont:[UIFont systemFontOfSize:13]];
        [_contentTextLabel setTextColor:RGB16(0X898989)];
        _contentTextLabel.numberOfLines = 0;
    }
    return _contentTextLabel;
}

-(void)dealloc{
    [self.timer invalidate];
}

@end
