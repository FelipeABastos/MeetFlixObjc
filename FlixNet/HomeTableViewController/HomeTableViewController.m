//
//  HomeTableViewController.m
//  FlixNet
//
//  Created by Felipe Amorim Bastos on 09/07/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import "HomeTableViewController.h"
#import "Movie.h"
#import "Category.h"
#import "CategoryTableViewCell.h"
#import "MovieCollectionViewCell.h"
#import "DetailViewController.h"

@interface HomeTableViewController ()
{
    NSArray<Movie*>* trailers;
    NSArray<Category*>* categories;
}
@end

@implementation HomeTableViewController

//---------------------------------------------------------------------------------------------
//  UIViewController Delegate
//---------------------------------------------------------------------------------------------

#pragma mark - UIViewController Delegate

- (void)viewDidLoad{
    [super viewDidLoad];
    
    trailers = [Movie getHighlight];
    categories = [Category getCategories];
    
    [self.cvTrailers reloadData];
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
//  TableView Delegate
//---------------------------------------------------------------------------------------------

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Category *category = categories[indexPath.section];
    
    CategoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CategoryCellId" forIndexPath:indexPath];
    cell.movies = category.movies;
    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return categories.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 35;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    Category *category = categories[section];
    
    UIView* sectionView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, 35)];
    sectionView.backgroundColor = [UIColor clearColor];
    
    UILabel* label = [[UILabel alloc]initWithFrame:CGRectMake(8, 0, sectionView.bounds.size.width, sectionView.bounds.size.height)];
    label.text = category.name;
    label.backgroundColor = [UIColor blackColor];
    label.textColor = [UIColor whiteColor];
    
    [sectionView addSubview:label];
    
    return sectionView;
}

//---------------------------------------------------------------------------------------------
//  UICollectionView Delegate / Datasource
//---------------------------------------------------------------------------------------------

#pragma mark - UICollectionView Delegate / Datasource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return trailers.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    Movie *trailer = trailers[indexPath.row];
    
    MovieCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"movieCellId" forIndexPath:indexPath];
    cell.lblTitle.text = trailer.title;
    [cell loadUI:trailer];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    DetailViewController *detailView = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailView"];
    
    detailView.movies = trailers;
    detailView.movie = trailers[indexPath.item];
    
    [self presentViewController:detailView animated:true completion:nil];
}

//-----------------------------
//  Flow layout
//-----------------------------

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(92, 92);
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


@end
