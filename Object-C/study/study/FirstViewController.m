//
//  FirstViewController.m
//  study
//
//  Created by JSB_02 on 16/10/8.
//  Copyright © 2016年 JSB_02. All rights reserved.
//

#import "FirstViewController.h"
#import "CLPCollectionViewCell.h"

@interface FirstViewController ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property(nonatomic, strong) UICollectionView *collectionView;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadCollectionView];
}

-(void)loadCollectionView{
    //布局对象
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    flowLayout.headerReferenceSize = CGSizeMake(100, 0);
    flowLayout.footerReferenceSize = CGSizeMake(100, 0);
    
    //容器对象
    UICollectionView *customCollection = [[UICollectionView alloc] initWithFrame:self.view.bounds
                                                        collectionViewLayout:flowLayout];
    customCollection.delegate = self;
    customCollection.dataSource = self;
    customCollection.backgroundColor = [UIColor whiteColor];
    
    //添加到主视图
    [self.view addSubview:customCollection];
    self.collectionView = customCollection;
    
    //注册容器视图
    [customCollection registerClass:[CLPCollectionViewCell class] forCellWithReuseIdentifier:[CLPCollectionViewCell cellIdentifier]];
}

#pragma mark -data
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 10;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CLPCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[CLPCollectionViewCell cellIdentifier] forIndexPath:indexPath];
    cell.contentView.backgroundColor = [UIColor redColor];
    return cell;
}

#pragma UICollectionVieDelegateFlowLayout
-(CGSize)collectionView:(UICollectionView *)collectionView
                 layout:(UICollectionViewLayout *)collectionViewLayout
 sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(100, 100);
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView
                       layout:(UICollectionViewLayout *)collectionViewLayout
       insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(10, 10, 10, 10);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    return 10;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
