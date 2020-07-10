//
//  Movie.m
//  FlixNet
//
//  Created by Felipe Amorim Bastos on 09/07/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import "Movie.h"

@implementation Movie

+ (NSArray<Movie*>*) getHighlight {
  
    NSMutableArray<Movie*> * inChart = [[NSMutableArray<Movie*> alloc] init];
    
    Movie * titans = [Movie new];
    titans.title = @"Titans";
    titans.coverURL = @"https://i.pinimg.com/474x/da/20/a0/da20a0990d6b3a8358f72a5ae482da38.jpg";
    titans.text = @"Titans follows the young superheroes of the eponymous team as they combat evil and other perils. Disbanded when the story begins, the series sees the team return when the original and new members reform the Titans.";
    titans.age = 16;
    titans.year = @"2019";
    titans.temp = @"2 season";
    titans.casting = @"Starring: Brenton Thwaites, Teagan Croft, Anna Diop";
    titans.creators = @"Creators: Greg Berlanti, Akiva Goldsman, Geoff Johns";
    titans.time = @"Time remaining: 0m";
    titans.relevant = @"95% relevant";
    titans.progress = 1.0;
    
    Movie * finalSpace = [Movie new];
    finalSpace.title = @"Final Space";
    finalSpace.coverURL = @"https://images.justwatch.com/poster/150607100/s592";
    finalSpace.text = @"Gary Goodspeed is a boisterous yet inept astronaut who, in the midst of working off the last few days of his five-year sentence aboard the prison spacecraft Galaxy One, encounters a mysterious planet-destroying alien.";
    finalSpace.age = 16;
    finalSpace.year = @"2019";
    finalSpace.temp = @"2 seasons";
    finalSpace.casting = @"Starring: Olan Rogers, Fred Armisen, Tom Kenny";
    finalSpace.creators = @"Creators: Olan Rogers";
    finalSpace.time = @"Time remaining: 0m";
    finalSpace.relevant = @"97% relevant";
    finalSpace.progress = 1.0;
    
    Movie * sexEducation = [Movie new];
    sexEducation.title = @"Sex Education";
    sexEducation.coverURL = @"https://img.elo7.com.br/product/zoom/273ABEC/quadro-poster-com-moldura-serie-sex-education-filmes.jpg";
    sexEducation.text = @"The first series follows the story of Otis Milburn, a socially awkward teenager, who is ambivalent about sex, despite, or perhaps because of, his mother being a sex therapist who is frank about all aspects of sexuality.";
    sexEducation.age = 18;
    sexEducation.year = @"2020";
    sexEducation.temp = @"2 season";
    sexEducation.casting = @"Starring: Asa Butterfield, Gillian Anderson, Ncuti Gatwa";
    sexEducation.creators = @"Creators: Laurie Nunn";
    sexEducation.time = @"Time remaining: 0m";
    sexEducation.relevant = @"99% relevant";
    sexEducation.progress = 1.0;
    
    Movie * theWitcher = [Movie new];
    theWitcher.title = @"The Witcher";
    theWitcher.coverURL = @"http://br.web.img3.acsta.net/pictures/19/11/29/17/57/5161763.jpg";
    theWitcher.text = @"It is based on the book series of the same name by Polish writer Andrzej Sapkowski. The Witcher follows the story of Geralt of Rivia, a solitary monster hunter, who struggles to find his place in a world where people often prove more wicked than monsters and beasts.";
    theWitcher.age = 16;
    theWitcher.year = @"2019";
    theWitcher.temp = @"1 season";
    theWitcher.casting = @"Starring: Henry Cavill, Anya Chalotra, Freya Allan";
    theWitcher.creators = @"Creators: Lauren Schmidt Hissrich";
    theWitcher.time = @"Time remaining: 57m";
    theWitcher.relevant = @"98% relevant";
    theWitcher.progress = 0.80;
    
    Movie * tangled = [Movie new];
    tangled.title = @"Tangled";
    tangled.coverURL = @"https://f4.bcbits.com/img/a0339349878_10.jpg";
    tangled.text = @"When the kingdom's most wanted bandit, Flynn Rider, hides in a tower, he immediately becomes a prisoner of Rapunzel, the tower's longtime resident. Owner of magical golden hair 21 meters long, she has been locked up for years and desperately wants freedom.";
    tangled.age = 0;
    tangled.year = @"2010";
    tangled.temp = @"1h 41m";
    tangled.casting = @"Starring: Mandy Moore, Zachary Levi, Donna Murphy";
    tangled.creators = @"Creators: Nathan Greno, Byron Howard";
    tangled.time = @"Time remaining: 0m";
    tangled.relevant = @"70% relevant";
    tangled.progress = 1.0;
    
    [inChart addObject: titans];
    [inChart addObject: sexEducation];
    [inChart addObject:theWitcher];
    [inChart addObject:tangled];
    [inChart addObject:finalSpace];
    
    return inChart;
}

@end
