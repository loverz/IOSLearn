//
//  MYModel.m
//  IOSLearn
//
//  Created by loverz on 2018/4/8.
//  Copyright © 2018年 loverz. All rights reserved.
//

#import "MYModel.h"

@implementation MYModel

+(instancetype)myCellModel {
    MYModel * model = [[MYModel alloc] init];
    model.userName = @"欢妹子";
    model.nick = @"欢欢";
    model.content = @"帅的丫匹";
    
    return model;
    
}
@end
