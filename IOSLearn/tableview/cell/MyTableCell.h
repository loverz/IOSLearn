//
//  MyTableCell.h
//  IOSLearn
//
//  Created by loverz on 2018/4/8.
//  Copyright © 2018年 loverz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MYModel.h"
@interface MyTableCell : UITableViewCell
@property (nonatomic,strong)  MYModel * data;

@property (weak, nonatomic) IBOutlet UILabel *txtUserName;
@property (weak, nonatomic) IBOutlet UILabel *txtNickName;
@property (weak, nonatomic) IBOutlet UILabel *txtContent;
+(instancetype) cellWithTableView : (UITableView *) tableView;
@end
