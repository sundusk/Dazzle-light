//
//  UIViewController+BDLiveAddition.m
//  Bingdou
//
//  Created by sundusk on 2017/2/5.
//  Copyright © 2017年 Bingdou. All rights reserved.
//

#import "UIViewController+BDLiveAddition.h"

@implementation UIViewController (BDLiveAddition)
- (void)BDLive_addChildController:(UIViewController *)childController intoView:(UIView *)view
{
    // 1> 添加子控制器 － 否则响应者链条会被打断，导致事件无法正常传递，而且错误非常难改！
    [self addChildViewController:childController];
    
    // 2> 添加子控制器的视图
    [view addSubview:childController.view];
    
    // 3> 完成子控制器的添加
    [childController didMoveToParentViewController:self];
}
@end
