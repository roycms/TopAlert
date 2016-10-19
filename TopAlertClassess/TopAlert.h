//
//  TopAlert.h
//  TopAlert
//
//  Created by roycms on 2016/10/19.
//  Copyright © 2016年 roycms. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RRGB.h"
#import "Masonry.h"
@interface TopAlert : UIView
- (instancetype)initWithStyle:(UIColor*)color;
@property (nonatomic,strong)NSString *headerTitle;
@property (nonatomic,strong)NSString *contentText;

@end
