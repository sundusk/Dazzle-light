//
//  MQMainViewController.m
//  QwQ
//
//  Created by sundusk on 2017/7/29.
//  Copyright © 2017年 sundusk. All rights reserved.
//

#import "MQMainViewController.h"
#import "QwQ-Swift.h"


@interface MQMainViewController ()
@property (weak,nonatomic) UITapGestureRecognizer *tap;

@end

@implementation MQMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupChildVcs];
    
}

- (void)setupChildVcs{
    
    
    
    
    MQOneViewController *mqOneController = [[MQOneViewController alloc]init];
    [self setupItem:mqOneController title:@"明天" imageName:nil bage:nil];
    
    MQTwoViewController *mqTwoController = [[MQTwoViewController alloc]init];
    [self setupItem:mqTwoController title:@"今天" imageName:nil bage:nil];
    
    MQThreeViewController *mqThreeController = [[MQThreeViewController alloc]init];
    [self setupItem:mqThreeController title:@"昨天" imageName:nil bage:nil];
    self.viewControllers = @[mqOneController,mqTwoController,mqThreeController];
    
   
    
}
- (void)setupItem:(UIViewController *)controller title:(NSString *)title imageName:(NSString *)name bage:(NSString *)bage{
    controller.tabBarItem.title = title;
    controller.tabBarItem.image = [[UIImage imageNamed:name] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controller.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"%@HL",name]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controller.tabBarItem.badgeValue = bage;
    
}
- (UINavigationController *)navWithClassName:(NSString *)clsName andTitle:(NSString *)title image:(UIImage *)img{
    // 转为类
    Class cls = NSClassFromString(clsName);
    
    // 创建对象
    UIViewController *vc = [[cls alloc] init];
    
    //增加断言
    NSAssert([vc isKindOfClass:[UIViewController class]], @"%@ 写错了，没有这个类", clsName);
    vc.title = title;
    vc.tabBarItem.image = img;
    
    // 包装成导航控制器
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    
    
    return nav;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
