//
//  DetailViewController.h
//  FlixNet
//
//  Created by Felipe Amorim Bastos on 09/07/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, weak) IBOutlet UIImageView* imgBackGround;
@property (nonatomic, weak) IBOutlet UILabel* lblText;
@property (nonatomic, weak) IBOutlet UIImageView* imgMovie;
@property (nonatomic, weak) IBOutlet UIImageView* imgCoverMovie;
@property (nonatomic, weak) IBOutlet UILabel* lblAge;
@property (nonatomic, weak) IBOutlet UILabel* lblTemp;
@property (nonatomic, weak) IBOutlet UILabel* lblYear;
@property (nonatomic, weak) IBOutlet UIButton* btnAdd;
@property (nonatomic, weak) IBOutlet UIButton* btnLike;
@property (nonatomic, weak) IBOutlet UIButton* btnShare;
@property (nonatomic, weak) IBOutlet UIButton* btnDownload;
@property (nonatomic, weak) IBOutlet UILabel* lblCasting;
@property (nonatomic, weak) IBOutlet UILabel* lblCreators;
@property (nonatomic, weak) IBOutlet UIButton* btnPlay;
@property (nonatomic, weak) IBOutlet UIProgressView* pvProgressTime;
@property (nonatomic, weak) IBOutlet UILabel* lblTime;
@property (nonatomic, weak) IBOutlet UILabel* lblRelevant;
@property (nonatomic, weak) IBOutlet UIView* vwAgeSquare;

@property (nonatomic, weak) IBOutlet UICollectionView* cvRecomendations;

@property (nonatomic) NSArray<Movie*>* movies;
@property (nonatomic) Movie* movie;

@end

NS_ASSUME_NONNULL_END
