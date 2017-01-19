//
//  CCQPhotoCollectionViewCell.m
//  DazzleLight
//
//  Created by sundusk on 2017/1/18.
//  Copyright © 2017年 ccq. All rights reserved.
//

#import "CCQPhotoCollectionViewCell.h"

@implementation CCQPhotoCollectionViewCell

//懒加载创建数据
-(UIImageView *)photoV{
    if (_photoV == nil) {
        self.photoV = [[UIImageView alloc]initWithFrame:self.bounds];
    }
    return _photoV;
}

//创建自定义cell时调用该方法
- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        [self.contentView addSubview:self.photoV];
    }
    return self;
}
@end
