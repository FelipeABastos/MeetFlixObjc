//
//  MovieCollectionViewCell.m
//  FlixNet
//
//  Created by Felipe Amorim Bastos on 09/07/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import "MovieCollectionViewCell.h"

@implementation MovieCollectionViewCell

- (void)loadUI: (Movie*)item {
    [self.imgMovie sd_setImageWithURL:[NSURL URLWithString:item.coverURL]];
}

@end
