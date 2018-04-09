//
//  MyTableCell.m
//  IOSLearn
//
//  Created by loverz on 2018/4/8.
//  Copyright © 2018年 loverz. All rights reserved.
//

#import "MyTableCell.h"

@implementation MyTableCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


+(instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString * cellID = @"MyTableCell";
    MyTableCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if(cell == nil) {
//        cell = [[MyTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        cell = [[[NSBundle mainBundle] loadNibNamed:@"MyTableCell" owner:self options:nil] lastObject];
    }
    tableView.rowHeight = cell.frame.size.height;
//    MyTableCell * cell =[MyTableCell cellWithTableView:tableView];
//    MYModel * model = [MYModel myCellModel];
//    [cell setData:model];
    return cell;
}

-(void)setData:(MYModel *)data {
    _data = data;
    self.txtUserName.text = data.userName;
    self.txtNickName.text = data.nick;
    self.txtContent.text = data.content;
}

@end
