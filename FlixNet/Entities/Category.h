//
//  Category.h
//  FlixNet
//
//  Created by Felipe Amorim Bastos on 09/07/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface Category : NSObject

@property (nonatomic) NSArray<Movie*>* movies;
@property (nonatomic) NSString* name;

+ (NSArray<Category*>*) getCategories;
@end

NS_ASSUME_NONNULL_END
