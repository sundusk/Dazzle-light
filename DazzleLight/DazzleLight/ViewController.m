//
//  ViewController.m
//  DazzleLight
//
//  Created by 夜兔神威 on 2016/10/31.
//  Copyright © 2016年 ccq. All rights reserved.
//

#import "ViewController.h"
#import "CCQUserFeedBackViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"测试";
    
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor redColor];
    button.frame = CGRectMake(0, 150, self.view.frame.size.width, 40);
   
    [button setTitle:@"用户反馈" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)buttonClick{
    
    CCQUserFeedBackViewController *vc = [[CCQUserFeedBackViewController alloc] init];
    
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)buttonClick:(UIButton *)sender{
    
    
    NSLog(@"点击");
 
        
        [self.navigationController pushViewController:[[CCQUserFeedBackViewController alloc]init] animated:YES];
}

@end
