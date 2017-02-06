//
//  NSData+AES128.h
//  Bingdou
//
//  Created by sundusk on 2017/2/5.
//  Copyright © 2017年 Bingdou. All rights reserved.
//  AES128的加密和解密的简单实现
/*
 前言
 
 谈谈AES加密，网上有很多的版本，当我没有真正在加密安全问题前，总以为百度出来某个AES加密算法就可以直接使用，实际上当我真正要做加密时，遇到了很多的坑，原来不是拿过来就能用的。写下本篇文章，记录下曾经遇到的坑，严防以后再出现同样的坑。
 
 AES规则:原输入数据不够16字节的整数位时，就要补齐。因此就会有padding，若使用不同的padding，那么加密出来的结果也会不一样。
 
 AES加密算法
 
 苹果提供给我们的API只有这一个函数用来加密或者解密：
 CCCryptorStatus CCCrypt(
        CCOperation op,
        CCAlgorithm alg,
        CCOptions options,
        const void *key,
        size_t keyLength,
        const void *iv,
        const void *dataIn,
        size_t dataInLength,
        void *dataOut,
        size_t dataOutAvailable,
        size_t *dataOutMoved)
        __OSX_AVAILABLE_STARTING(__MAC_10_4, __IPHONE_2_0);
 
 分析各个参数：
    1.其中第一个CCOperation只有两个值，要么是kCCEncrypt表示加密，要么是kCCDecrypt表示解密。
    2.第二个参数表示加密的算法，它只有以下向种类型：
        enum {
                kCCAlgorithmAES128 = 0,
                kCCAlgorithmAES = 0,
                kCCAlgorithmDES,
                kCCAlgorithm3DES,
                kCCAlgorithmCAST,
                kCCAlgorithmRC4,
                kCCAlgorithmRC2,
                kCCAlgorithmBlowfish
            };
            typedef uint32_t CCAlgorithm;
 
    注意：我们这里使用的是kCCAlgorithmAES128表示使用AES128位加密。
 
    3.第三个参数表示选项，这里使用的是kCCOptionECBMode，表示ECB：
        enum {
                kCCOptionPKCS7Padding   = 0x0001,
                kCCOptionECBMode        = 0x0002

            };
            typedef uint32_t CCOptions;
 
    4.第四个参数表示加密/解密的密钥。
    5.第五个参数keyLength表示密钥的长度。
    6.第六个参数iv是个固定值，通过直接使用密钥即可。大家一定要注视这个参数，如果安卓、服务端和iOS端不统一，那么加密结果就会不一样，解密可能能解出来，但是解密后在末尾会出现一些\0、\t之类的。
    7.第七个参数dataIn表示要加密/解密的数据。
    8.第八个参数dataInLength表示要加密/解密的数据的长度。
    9.第九个参数dataOut用于接收加密后/解密后的结果。
    10.第十个参数dataOutAvailable表示加密后/解密后的数据的长度。
    11.第十一个参数dataOutMoved表示实际加密/解密的数据的长度。（因为有补齐）


 */
#import <Foundation/Foundation.h>

@interface NSData (AES128)

-(NSData*)AES128DecryptWithKey:(NSString*)key;

-(NSData*)AES128EncryptWithKey:(NSString*)key;


@end
