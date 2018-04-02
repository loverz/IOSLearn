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
- (IBAction)showAlertBtn:(id)sender {
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"metion" message:@"are you sure to enter the next page?" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * actionYes = [UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
        NSLog(@"you just click yes action!");
    }];
    UIAlertAction * actionNo = [UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * actioin){
        NSLog(@"you just click no action!");
    }];
    
    UIAlertAction * actionCancel = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * action){
        NSLog(@"you just click cancel!");
    }];
    [alert addAction:actionYes];
    [alert addAction:actionNo];
    [alert addAction:actionCancel];
    [self presentViewController:alert animated:YES completion:^{
        NSLog(@"present view alert complete");
    }];
    
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
