//
//  MyTabBarViewController.m
//  IOSLearn
//
//  Created by loverz on 2018/3/23.
//  Copyright © 2018年 loverz. All rights reserved.
//

#import "MyTabBarViewController.h"
#import "FindViewController.h"
@interface MyTabBarViewController ()

@end

@implementation MyTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    UIViewController * homeVC = [[UIViewController alloc] init];
    homeVC.title = @"主页";
    homeVC.view.backgroundColor = [UIColor redColor];
    UINavigationController * homeNVC = [[UINavigationController alloc] initWithRootViewController:homeVC];
    UITabBarItem * homeItem = [[UITabBarItem alloc] initWithTitle:@"home" image:[UIImage imageNamed:@"tabbar_mainframe"] selectedImage:[UIImage imageNamed:@"tabbar_mainframeHL"]];
    homeNVC.tabBarItem = homeItem;
    
    UIViewController * contactVC = [[UIViewController alloc] init];
    contactVC.title = @"联系人";
    contactVC.view.backgroundColor = [UIColor yellowColor];
    UINavigationController * contactNVC = [[UINavigationController alloc] initWithRootViewController:contactVC];
    UITabBarItem * contactItem = [[UITabBarItem alloc] initWithTitle:@"contact" image:[UIImage imageNamed:@"tabbar_contacts"] selectedImage:[UIImage imageNamed:@"tabbar_contactsHL"]];
    contactNVC.tabBarItem = contactItem;
    
    UIViewController * meVC = [[UIViewController alloc] init];
    meVC.title = @"我的";
    meVC.view.backgroundColor = [UIColor greenColor];
    UINavigationController * meNVC = [[UINavigationController alloc]initWithRootViewController:meVC];
    UITabBarItem * meItem = [[UITabBarItem alloc] initWithTitle:@"me" image:[UIImage imageNamed:@"tabbar_me"] selectedImage:[UIImage imageNamed:@"tabbar_meHL"]];
    meNVC.tabBarItem = meItem;
    
    FindViewController * findVC = [[FindViewController alloc] init];
    findVC.title = @"发现";
    UINavigationController * findNVC = [[UINavigationController alloc] initWithRootViewController:findVC];
    UITabBarItem * findItem = [[UITabBarItem alloc] initWithTitle:@"find" image:[UIImage imageNamed:@"tabbar_discover"] selectedImage:[UIImage imageNamed:@"tabbar_discoverHL"]];
    findNVC.tabBarItem = findItem;
    
    // 这里将所有uiviewcontroller加入到 tabbarcontroller中
    self.viewControllers = @[homeNVC,contactNVC,findNVC,meNVC];
    self.selectedViewController = homeNVC;
    
    
    UIBarButtonItem * goBtn = [[UIBarButtonItem alloc] initWithTitle:@"go" style:UIBarButtonItemStyleDone target:self action:@selector(goClick)];
    self.navigationItem.rightBarButtonItem = goBtn;
    self.navigationItem.title = @"setting";
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void) goClick{
    
}

@end
