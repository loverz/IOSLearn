//
//  SourceViewController.m
//  IOSLearn
//
//  Created by loverz on 2018/3/22.
//  Copyright © 2018年 loverz. All rights reserved.
//

#import "SourceViewController.h"
#import "DesViewController.h"
#import "MyTabBarViewController.h"
@interface SourceViewController ()<DesViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *goTabBtn;
@end

@implementation SourceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveMsg:) name:@"desVCReturn" object:nil];
    
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated{
//    NSLog(@"view will appear"
//          );
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
    desVC.block = ^(NSString *str){
        NSLog(@"receive msg block : |%@" , str);
    };
    
    [self.navigationController pushViewController:desVC animated:YES];
    
    
}
- (IBAction)btnGoTabClick:(id)sender {
    MyTabBarViewController * myTab = [[MyTabBarViewController alloc] init];
    
    [self.navigationController pushViewController:myTab animated:YES];
    
}

-(void)receiveMsg : (NSNotification *) notification {
    NSString * msg = (NSString*) notification.object;
    NSLog(@"receive msg from notification center : %@",msg);
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

-(void)dealloc {
    // 观察者模式需要释放界面的时候取消注册
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
