//
//  MyTableViewController.m
//  IOSLearn
//
//  Created by loverz on 2018/4/2.
//  Copyright © 2018年 loverz. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()

{
    NSMutableArray * data;
    
}

@end


@implementation MyTableViewController

-(UITableView *)myTable {
    
    if(_myTable == nil) {
        _myTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _myTable.dataSource = self;
        _myTable.delegate = self;// 设置代理协议
        _myTable.separatorColor = [UIColor redColor];
        
        // 删除多余分割线
        UIView * view = [UIView new];
        view.backgroundColor = [UIColor clearColor];
        _myTable.tableFooterView = view;
        // 添加headview
        UIView * tableViewHeader = [[UIView alloc] initWithFrame:CGRectMake(0,0, [UIScreen mainScreen].bounds.size.width, 40)];
        tableViewHeader.backgroundColor = [UIColor greenColor];
        _myTable.tableHeaderView = tableViewHeader;
        // test 测试github忽略deriveddata文件夹中所有文件
    }
    return _myTable;
}


- (void)viewDidLoad {
    data = [[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4", nil];
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
    
    if(data == nil) {
        return 0;
    }
    return data.count;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString * cellID = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if(cell == nil){
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        
    }
    NSString * text = [NSString stringWithFormat:@" %@" ,(NSString *)data[indexPath.row]];
    cell.textLabel.text = text;
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"didSelectRowAtIndexPath index path :%@" , indexPath);
    
}

-(NSArray<UITableViewRowAction *> *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewRowAction * action1 = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleNormal title:@"add" handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
        //
        
    }];
    
    UITableViewRowAction * action3 = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDefault title:@"delete" handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
        //        NumberGroup
        NSLog(@"delete row is : %ld",(long)indexPath.row );
        [data removeObjectAtIndex:indexPath.row];
        [_myTable reloadData];
    }];
    NSArray * array = @[action1,action3];
    return array;
}



@end
