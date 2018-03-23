//
//  DesViewController.m
//  IOSLearn
//
//  Created by loverz on 2018/3/22.
//  Copyright © 2018年 loverz. All rights reserved.
//

#import "DesViewController.h"

@interface DesViewController ()<UIGestureRecognizerDelegate>

@end

@implementation DesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    UIBarButtonItem * backBtn = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStylePlain target:self action:@selector(backClick)];
    self.navigationItem.leftBarButtonItem = backBtn;
    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
    
    UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    [btn setTitle:@"return" forState:UIControlStateNormal];
    [btn setTintColor:[UIColor blackColor]];
    [btn addTarget:self action:@selector(returnVCStr) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) returnVCStr{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"desVCReturn" object:@"你好~~~world！"];
    [self.navigationController popViewControllerAnimated:YES];
    
}

-(void) backClick{
    // 调用代理方法（借口）需要先校验代理是否能够触发
    if([self.delegate respondsToSelector:@selector(desViewController:des2sourceStr:)]){
        [self.delegate desViewController:self des2sourceStr:@"hahahah"];
    }
    [self.navigationController popViewControllerAnimated:YES];
    
}
// 此方法应该代理定义在界面基类中
-(BOOL) gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    if([self.navigationController.viewControllers count] == 1){
        return NO;
        
    }else {
        return YES;
    }
    
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
