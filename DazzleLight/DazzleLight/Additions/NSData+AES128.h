//
//  NSData+AES128.h
//  Bingdou
//
//  Created by sundusk on 2017/2/5.
//  Copyright © 2017年 Bingdou. All rights reserved.
//  AES128的加密和解密的简单实现
#import <Foundation/Foundation.h>

@interface NSData (AES128)

-(NSData*)AES128DecryptWithKey:(NSString*)key;

-(NSData*)AES128EncryptWithKey:(NSString*)key;


@end
