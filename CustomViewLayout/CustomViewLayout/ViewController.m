//
//  ViewController.m
//  CustomViewLayout
//
//  Created by quockhai on 2019/4/3.
//  Copyright © 2019 Polymath. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.photoCollection.delegate = self;
    self.photoCollection.dataSource = self;
    [self.photoCollection registerNib:[UINib nibWithNibName:@"PhotoCollectionCell" bundle:nil] forCellWithReuseIdentifier:@"photoCell"];
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    PhotoCollectionCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"photoCell" forIndexPath:indexPath];
    
//    cell.backgroundColor = UIColor.blueColor;
    
    return cell;
}


@end
