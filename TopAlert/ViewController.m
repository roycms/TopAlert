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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    TopAlert *alert =[[TopAlert alloc]initWithStyle:RGB(@"#8e44ad")];
    alert.headerTitle =@"headerTitle";
    alert.contentText =@"contentText";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
