//
//  ViewController.m
//  TopAlert
//
//  Created by roycms on 2016/10/19.
//  Copyright © 2016年 roycms. All rights reserved.
//

#import "ViewController.h"
#import "TopAlert.h"
@interface ViewController ()
@property (nonatomic,strong)NSArray *arry;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self UI];
    [self buttonUI];
}

-(void)UI{
    
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.image = [UIImage imageNamed:@"bg.jpg"];
    UIImageView *logoImageView = [[UIImageView alloc]init];
    logoImageView.image = [UIImage imageNamed:@"logo.png"];
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleLight]];
    UILabel *label =[[UILabel alloc]init];
    label.text =@"TopAlert";
    [label setFont:[UIFont systemFontOfSize:30.0]];
    [label setTextColor:RGB16(0x3d3d3d)];
    
    UILabel *githubLabel =[[UILabel alloc]init];
    githubLabel.text =@"https://github.com/roycms";
    [githubLabel setFont:[UIFont systemFontOfSize:11]];
    [githubLabel setTextColor:RGB16(0x3d3d3d)];
    [self.view addSubview:imageView];
    [imageView addSubview:effectView];
    [self.view addSubview:logoImageView];
    [self.view addSubview:label];
    [self.view addSubview:githubLabel];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    [effectView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(imageView);
    }];
    [logoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(30);
        make.centerX.equalTo(self.view);
    }];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(logoImageView.mas_bottom).offset(10);
        make.centerX.equalTo(self.view);
    }];
    [githubLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view).offset(-10);
        make.centerX.equalTo(self.view);
    }];
    

}
-(void)buttonUI{
    self.arry = @[@"#1abc9c",@"#27ae60",@"#2980b9",@"#2c3e50",@"#8e44ad",@"#f39c12",@"#c0392b"];
    for (int i=0;i<self.arry.count;i++) {
        UIButton *bt = [[UIButton alloc]init];
        [bt setBackgroundColor:RGB16(0xf8f8f8)];
        [bt.layer setBorderWidth:1];
        bt.alpha = 0.6;
        [bt setTitleColor:RGB16(0x3d3d3d) forState:UIControlStateNormal];
        [bt.layer setBorderColor:RGB16(0xebebeb).CGColor];
        bt.tag = i;
        [bt setTitle:self.arry[i] forState:UIControlStateNormal];
        [self.view addSubview:bt];
        [bt mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view).offset(230+i*50);
            make.centerX.equalTo(self.view);
            make.width.offset(120);
        }];
        [bt addTarget:self action:@selector(btClick:) forControlEvents:UIControlEventTouchUpInside];
    }
}
-(void)btClick:(UIButton *)sender{

    TopAlert *alert = [[TopAlert alloc]initWithStyle:RGB(self.arry[sender.tag])];
    alert.headerTitle = @"Title";
    alert.contentText = @"contentText";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
