//
//  XZCollectionViewVC.m
//  IOSLearn
//
//  Created by loverz on 2018/4/11.
//  Copyright © 2018年 loverz. All rights reserved.
//

#import "XZCollectionViewVC.h"

@interface XZCollectionViewVC ()

@end

@implementation XZCollectionViewVC

-(UICollectionView *) mCollectionView {
    if (_mCollectionView== nil) {
        UICollectionViewFlowLayout * flowLayout = [[UICollectionViewFlowLayout alloc] init];
        _mCollectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
        _mCollectionView.dataSource = self;
        _mCollectionView.backgroundColor = [UIColor whiteColor];
        
    }
    return _mCollectionView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"collection"];
    [self.view addSubview:self.mCollectionView];
    [self.mCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 100;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor yellowColor];
    return cell;
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
