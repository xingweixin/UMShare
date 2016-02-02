//
//  AppDelegate.m
//  02-友盟分享
//
//  Created by xiaomage on 15/8/13.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "AppDelegate.h"
#import "UMSocial.h"
#import "UMSocialSinaHandler.h"
#import "UMSocialWechatHandler.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [UMSocialData setAppKey:@"55cc13d067e58e9cad00194e"];
    
    [UMSocialSinaHandler openSSOWithRedirectURL:@"http://sns.whalecloud.com/sina2/callback"];
    
    [UMSocialWechatHandler setWXAppId:@"wx82fcee00c5e507de" appSecret:@"baea707463510cfdfd714adaaa92564a" url:@"http://www.520it.com"];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

//用于应用跳转的新旧方法
- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    return  [UMSocialSnsService handleOpenURL:url];
}

- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    NSLog(@"%@", url);
    return  [UMSocialSnsService handleOpenURL:url];
}

@end
