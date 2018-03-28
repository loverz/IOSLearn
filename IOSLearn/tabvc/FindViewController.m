//
//  FindViewController.m
//  IOSLearn
//
//  Created by loverz on 2018/3/23.
//  Copyright © 2018年 loverz. All rights reserved.
//

#import "FindViewController.h"
#import "WebTestViewController.h"
@interface FindViewController ()

@end

@implementation FindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"find"];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)goWebBtnClick:(id)sender {
    
    WebTestViewController * vc = [[WebTestViewController alloc] init];
    
    [self.navigationController pushViewController:vc animated:YES];
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
