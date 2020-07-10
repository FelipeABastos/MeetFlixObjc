//
//  DetailViewController.m
//  FlixNet
//
//  Created by Felipe Amorim Bastos on 09/07/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import "DetailViewController.h"
#import "Movie.h"
#import "Category.h"
#import "MovieCollectionViewCell.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

//---------------------------------------------------------------------------------------------
//  UIViewController Delegate
//---------------------------------------------------------------------------------------------

#pragma mark - UIViewController Delegate

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.lblText.text = self.movie.text;
    self.lblAge.text = [NSString stringWithFormat:@"%d",self.movie.age];
    self.lblYear.text = self.movie.year;
    self.lblTemp.text = self.movie.temp;
    self.lblCasting.text = self.movie.casting;
    self.lblCreators.text = self.movie.creators;
    self.lblTime.text = self.movie.time;
    self.lblRelevant.text = self.movie.relevant;
    self.pvProgressTime.progress = self.movie.progress;
    
    [self.imgBackGround sd_setImageWithURL:[NSURL URLWithString:self.movie.coverURL]];
    [self.imgCoverMovie sd_setImageWithURL:[NSURL URLWithString:self.movie.coverURL]];
    
    switch (self.movie.age) {
            case 0:
            self.vwAgeSquare.backgroundColor = [UIColor colorWithRed: 0.27 green: 0.74 blue: 0.20 alpha: 1.00];
            self.lblAge.text = @"L";
            [self.lblAge setTextAlignment:NSTextAlignmentCenter];
            break;
            
            case 10:
            self.vwAgeSquare.backgroundColor = [UIColor colorWithRed: 0.00 green: 0.66 blue: 1.00 alpha: 1.00];
            break;
            
            case 12:
            self.lblAge.textColor = [UIColor blackColor];
            self.vwAgeSquare.backgroundColor = [UIColor colorWithRed: 0.98 green: 0.77 blue: 0.19 alpha: 1.00];
            break;
            
            case 14:
            self.vwAgeSquare.backgroundColor = [UIColor colorWithRed: 0.97 green: 0.62 blue: 0.12 alpha: 1.00];
            break;
            
            case 16:
            self.vwAgeSquare.backgroundColor = [UIColor colorWithRed: 0.92 green: 0.13 blue: 0.15 alpha: 1.00];
            break;
            
            case 18:
            self.vwAgeSquare.backgroundColor = [UIColor blackColor];
            break;
          
        default:
            break;
    }
    
    [self.cvRecomendations reloadData];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    
}

//---------------------------------------------------------------------------------------------
//  UICollectionView Delegate / Datasource
//---------------------------------------------------------------------------------------------

#pragma mark - UICollectionView Delegate / Datasource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.movies.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    Movie *movie = self.movies[indexPath.row];
    
    MovieCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"DetailCellId" forIndexPath:indexPath];
    cell.lblTitle.text = movie.title;
    [cell loadUI:movie];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    DetailViewController *detailView = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailView"];
    
    detailView.movie = self.movies[indexPath.item];
    detailView.movies = self.movies;
    
    [self presentViewController:detailView animated:true completion:nil];
}

//-----------------------------
//  Flow layout
//-----------------------------

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(92, 130);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    return 10;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    return 1;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(0, 8, 0, 8);
}


//---------------------------------------------------------------------------------------------
//  Custom Methods
//---------------------------------------------------------------------------------------------

- (IBAction)backHome:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
