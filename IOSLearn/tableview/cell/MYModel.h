//
//  MYModel.h
//  IOSLearn
//
//  Created by loverz on 2018/4/8.
//  Copyright © 2018年 loverz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MYModel : NSObject
@property (nonatomic,copy) NSString * userName;
@property (nonatomic,copy) NSString * content;
@property (nonatomic,copy) NSString * nick;

+(instancetype) myCellModel;

@end
