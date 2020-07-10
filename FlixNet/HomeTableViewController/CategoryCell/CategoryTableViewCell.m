//
//  CategoryTableViewCell.m
//  FlixNet
//
//  Created by Felipe Amorim Bastos on 09/07/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import "CategoryTableViewCell.h"
#import "MovieCollectionViewCell.h"
#import "DetailViewController.h"
#import "UIApplication+TopViewController.h"

@implementation CategoryTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

//---------------------------------------------------------------------------------------------
//  UICollectionView Delegate / Datasource
//---------------------------------------------------------------------------------------------

#pragma mark - UICollectionView Delegate / Datasource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.movies.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    Movie *movie = self.movies[indexPath.item];
    
    MovieCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"movieCellId" forIndexPath:indexPath];
    [cell loadUI:movie];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UIViewController *topViewController = [[UIApplication sharedApplication] topViewController];
    
    DetailViewController *detailView = [[topViewController storyboard] instantiateViewControllerWithIdentifier:@"DetailView"];
    
    detailView.movies = self.movies;
    detailView.movie = self.movies[indexPath.item];
    
    [topViewController presentViewController:detailView animated:true completion:nil];
}

//-----------------------------
//  Flow layout
//-----------------------------

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(collectionView.bounds.size.height * 0.7, collectionView.bounds.size.height);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    return 5;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    return 1;
}

@end

