//
//  ViewController.m
//  Wavy-Collection-View
//
//  Created by Mar Koss on 2017-10-19.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "ViewController.h"
#import "MyCollectionViewCell.h"
#import "WavyFlowLayout.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupCollectionLayout];

}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    
    return 20;
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {

    MyCollectionViewCell *cell = [self.collectionVIew dequeueReusableCellWithReuseIdentifier:@"cellReuseId" forIndexPath:indexPath];
    
    NSString *label = [NSString stringWithFormat:@"%ld", (long)indexPath.item];
    cell.label.text = label;
    return cell;
}

- (void)setupCollectionLayout {
    WavyFlowLayout *wavyFlowLayout = [WavyFlowLayout new];
    [wavyFlowLayout prepareLayout];
    self.collectionVIew.collectionViewLayout = wavyFlowLayout;
}



@end
