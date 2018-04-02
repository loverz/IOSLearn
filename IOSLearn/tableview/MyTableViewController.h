//
//  MyTableViewController.h
//  IOSLearn
//
//  Created by loverz on 2018/4/2.
//  Copyright © 2018年 loverz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UITableView * myTable;
@end
