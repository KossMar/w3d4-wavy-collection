//
//  WavyFlowLayout.m
//  Wavy-Collection-View
//
//  Created by Mar Koss on 2017-10-19.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "WavyFlowLayout.h"

@implementation WavyFlowLayout

- (void)prepareLayout {
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}

-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    
    NSArray<UICollectionViewLayoutAttributes *> *superAttrs = [super layoutAttributesForElementsInRect:rect];
    
    NSMutableArray<UICollectionViewLayoutAttributes *> *newAttrs = [[NSMutableArray alloc] init];
    
    for (UICollectionViewLayoutAttributes *x in superAttrs){
        CGFloat num = arc4random_uniform(300);
        CGFloat num2 = num + 150;
        [x setFrame:CGRectMake(x.frame.origin.x, x.frame.origin.y + num, x.frame.size.width, x.frame.size.height)];
//        [x setCenter:CGPointMake(self.collectionView.center.y, arc4random_uniform(20))];
        [newAttrs addObject:x];
    }
    return  newAttrs;
}


@end

//
//@property (nonatomic) CGRect frame;
//@property (nonatomic) CGPoint center;
//@property (nonatomic) CGSize size;
//@property (nonatomic) CATransform3D transform3D;
//@property (nonatomic) CGRect bounds NS_AVAILABLE_IOS(7_0);
//@property (nonatomic) CGAffineTransform transform NS_AVAILABLE_IOS(7_0);
//@property (nonatomic) CGFloat alpha;
//@property (nonatomic) NSInteger zIndex; // default is 0
//@property (nonatomic, getter=isHidden) BOOL hidden; // As an optimization, UICollectionView might not create a view for items whose hidden attribute is YES
//@property (nonatomic, strong) NSIndexPath *indexPath;

