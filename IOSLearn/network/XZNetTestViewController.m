//
//  XZNetTestViewController.m
//  IOSLearn
//
//  Created by loverz on 2018/4/9.
//  Copyright © 2018年 loverz. All rights reserved.
//

#import "XZNetTestViewController.h"
#import "AFNetworking.h"


@interface XZNetTestViewController ()

@end

@implementation XZNetTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"net"];
    // Do any additional setup after loading the view from its nib.
    [self initNetwork];
}


-(void) initNetwork{
    // 获取监听监管
    AFNetworkReachabilityManager * manager = [AFNetworkReachabilityManager sharedManager];
    [manager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        switch (status) {
            case AFNetworkReachabilityStatusUnknown:
                NSLog(@"network unknown");
                break;
            case AFNetworkReachabilityStatusNotReachable:
                NSLog(@"AFNetworkReachabilityStatusNotReachable");
                break;
            case AFNetworkReachabilityStatusReachableViaWiFi:
                NSLog(@"wifi....");
                break;
            case AFNetworkReachabilityStatusReachableViaWWAN:
                NSLog(@"3G/4G....");
                break;
            default:
                break;
        }
    }];
    // 开始监听
    [manager startMonitoring];
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
