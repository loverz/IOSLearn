//
//  MyTableViewController.m
//  IOSLearn
//
//  Created by loverz on 2018/4/2.
//  Copyright © 2018年 loverz. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()

@end


@implementation MyTableViewController

-(UITableView *)myTable {
    
    if(_myTable == nil) {
        _myTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _myTable.dataSource = self;
        _myTable.delegate = self;// 设置代理协议
    }
    return _myTable;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"MyTable"];
    [self.view addSubview:self.myTable];
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
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString * cellID = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if(cell == nil){
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        
    }
    NSString * text = [NSString stringWithFormat:@" %d" ,arc4random_uniform(100000)];
    cell.textLabel.text = text;
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"didSelectRowAtIndexPath index path :%@" , indexPath);
    
}

@end
