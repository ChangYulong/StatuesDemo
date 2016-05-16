//
//  ViewController.m
//  StatuesDemo
//
//  Created by shanghaikedu on 15/12/23.
//  Copyright © 2015年 Langmuir. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //修改状态栏字体的颜色
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
//    //修改信号栏（状态栏）的颜色
    UIView * statusBarView = [[UIView alloc] initWithFrame:[UIApplication sharedApplication].statusBarFrame];
    statusBarView.backgroundColor = [UIColor redColor];
    
    [[[UIApplication sharedApplication].delegate window] addSubview:statusBarView];
//    //修改导航栏的颜色
    [self.navigationController.navigationBar setBarTintColor:[UIColor yellowColor]];
    
  
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
