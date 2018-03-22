//
//  DesViewController.h
//  IOSLearn
//
//  Created by loverz on 2018/3/22.
//  Copyright © 2018年 loverz. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DesViewController;
@protocol DesViewControllerDelegate <NSObject>
@required
// 必须要实现的代理方法
-(void) desViewController :(DesViewController *) des  des2sourceStr:(NSString*) str;
@optional
//不是必要的
@end


@interface DesViewController : UIViewController
@property (nonatomic,weak) id <DesViewControllerDelegate> delegate;

@end
