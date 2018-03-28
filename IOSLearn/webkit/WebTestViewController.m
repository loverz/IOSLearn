//
//  WebTestViewController.m
//  IOSLearn
//
//  Created by loverz on 2018/3/28.
//  Copyright © 2018年 loverz. All rights reserved.
//

#import "WebTestViewController.h"
#import <WebKit/WebKit.h>

@interface WebTestViewController ()

@end

@implementation WebTestViewController
- (IBAction)backTabBarVCClick:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    WKWebView * webview = [[WKWebView alloc] initWithFrame:self.view.bounds ];
//    NSMutableURLRequest * request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]];
//    [webview loadRequest:request ];
//    [self.view addSubview:webview];
    
    // Do any additional setup after loading the view from its nib.
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
