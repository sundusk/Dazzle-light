//
//  CCQPlaceholderTextView.h
//  DazzleLight
//
//  Created by sundusk on 2017/1/18.
//  Copyright © 2017年 ccq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCQPlaceholderTextView : UITextView
@property (nonatomic, strong) UILabel * placeHolderLabel;

@property (nonatomic, copy) NSString * placeholder;

@property (nonatomic, strong) UIColor * placeholderColor;

- (void)textChanged:(NSNotification * )notification;
@end
