//
//  SourceViewController.m
//  IOSLearn
//
//  Created by loverz on 2018/3/22.
//  Copyright © 2018年 loverz. All rights reserved.
//

#import "SourceViewController.h"
#import "DesViewController.h"
@interface SourceViewController ()<DesViewControllerDelegate>

@end

@implementation SourceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"view will appear"
          );
    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem * goBtn = [[UIBarButtonItem alloc] initWithTitle:@"go" style:UIBarButtonItemStyleDone target:self action:@selector(goClick)];
    self.navigationItem.rightBarButtonItem = goBtn;
    self.navigationItem.title = @"setting";
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) goClick{
    DesViewController * desVC = [[DesViewController alloc] init];
    desVC.delegate = self;
    [self.navigationController pushViewController:desVC animated:YES];
    
    
}

-(void)desViewController:(DesViewController *)des des2sourceStr:(NSString *)str{
    
    
    NSLog(@"desVc call back str = %@",str);
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
