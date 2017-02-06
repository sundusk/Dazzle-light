//
//  UIButton+BDLiveAddition.h
//  Bingdou
//
//  Created by sundusk on 2017/2/5.
//  Copyright © 2017年 Bingdou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (BDLiveAddition)

/// 创建文本按钮
///
/// @param title         文本
/// @param fontSize      字体大小
/// @param normalColor   默认颜色
/// @param selectedColor 选中颜色
///
/// @return UIButton
+ (instancetype)BDLive_textButton:(NSString *)title fontSize:(CGFloat)fontSize normalColor:(UIColor *)normalColor selectedColor:(UIColor *)selectedColor;

@end
