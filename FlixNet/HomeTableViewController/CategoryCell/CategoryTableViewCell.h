//
//  CategoryTableViewCell.h
//  FlixNet
//
//  Created by Felipe Amorim Bastos on 09/07/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface CategoryTableViewCell : UITableViewCell <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic) NSArray<Movie*>* movies;

@end

NS_ASSUME_NONNULL_END
