//
//  ViewController.m
//  02-友盟分享
//
//  Created by xiaomage on 15/8/13.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "ViewController.h"
#import "UMSocial.h"

@interface ViewController ()

- (IBAction)share;

@end

@implementation ViewController

- (IBAction)share {
    //友盟的appKey
    NSString *appKey = @"55cc13d067e58e9cad00194e";
   //需要发表的话,且连接
    NSString *shareText = @"梦想还是要有的,万一实现了呢.http://www.baidu.com";
   //发送的图片
    UIImage *image = [UIImage imageNamed:@"xingxing"];
   //要去分享到的平台
    NSArray *snsNames = @[UMShareToDouban, UMShareToEmail, UMShareToRenren, UMShareToSina, UMShareToWechatSession, UMShareToWechatTimeline];
    
    [UMSocialSnsService presentSnsIconSheetView:self
                                         appKey:appKey
                                      shareText:shareText
                                     shareImage:image
                                shareToSnsNames:snsNames
                                       delegate:nil];
}

@end
