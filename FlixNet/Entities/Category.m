//
//  Category.m
//  FlixNet
//
//  Created by Felipe Amorim Bastos on 09/07/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import "Category.h"
#import "Movie.h"

@implementation Category

+ (NSArray<Category*>*) getCategories {
  
    NSMutableArray<Movie*> * serieMovies = [[NSMutableArray<Movie*> alloc] init];
    NSMutableArray<Movie*> * animationMovies = [[NSMutableArray<Movie*> alloc] init];
    NSMutableArray<Movie*> * comedyMovies = [[NSMutableArray<Movie*> alloc] init];
    NSMutableArray<Category*> * categories = [[NSMutableArray<Category*> alloc] init];
    
    Movie * rickAndMorty = [Movie new];
    rickAndMorty.title = @"Rick and Morty";
    rickAndMorty.coverURL = @"https://img.estadao.com.br/thumbs/640/resources/jpg/5/0/1557958505405.jpg";
    rickAndMorty.text = @"The show revolves around the adventures of the members of the Smith household, which consists of parents Jerry and Beth, their children Summer and Morty, and Beth's father, Rick Sanchez, who lives with them as a guest.";
    rickAndMorty.age = 16;
    rickAndMorty.year = @"2013";
    rickAndMorty.temp = @"4 seasons";
    rickAndMorty.casting = @"Starring: Justin Roiland, Chris Parnell, Spencer Grammer";
    rickAndMorty.creators = @"Creators: Dan Harmon, Justin Roiland";
    rickAndMorty.time = @"Time remaining: 8m";
    rickAndMorty.relevant = @"100% relevant";
    rickAndMorty.progress = 0.95;
    
    Movie * cars = [Movie new];
    cars.title = @"Cars";
    cars.coverURL = @"https://www.mobygames.com/images/covers/l/409089-disney-pixar-cars-3-driven-to-win-playstation-3-front-cover.png";
    cars.text = @"The show revolves around the adventures of the members of the Smith household, which consists of parents Jerry and Beth, their children Summer and Morty, and Beth's father, Rick Sanchez, who lives with them as a guest. ";
    cars.age = 16;
    cars.year = @"2013";
    cars.temp = @"4 seasons";
    cars.casting = @"Starring: Justin Roiland, Chris Parnell, Spencer Grammer";
    cars.creators = @"Creators: Dan Harmon, Justin Roiland";
    cars.time = @"Time remaining: 8m";
    cars.relevant = @"100% relevant";
    cars.progress = 0.95;
    
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
    
    Movie * spongeBob = [Movie new];
    spongeBob.title = @"Sponge Bob";
    spongeBob.coverURL = @"https://comicbookrealm.com/cover-scan/3077f069f0015fce8a1910b57b17cb45/l/tokyo-popmixx-spongebob-squarepants-cine-manga-soft-cover-3.jpg";
    spongeBob.text = @"A square yellow sponge named SpongeBob SquarePants lives in a pineapple with his pet snail, Gary, in the city of Bikini Bottom on the floor of the Pacific Ocean. He works as a fry cook at the Krusty Krab.";
    spongeBob.age = 10;
    spongeBob.year = @"2013";
    spongeBob.temp = @"3 seasons";
    spongeBob.casting = @"Starring: Tom Kenny, Rodger Bumpass, Bill Fagerbakke";
    spongeBob.creators = @"Creators: Stephen HillenBurg";
    spongeBob.time = @"Time remaining: 0m";
    spongeBob.relevant = @"70% relevant";
    spongeBob.progress = 1.0;
    
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
    
    Movie * brooklyn99 = [Movie new];
    brooklyn99.title = @"Brooklyn Nine-Nine";
    brooklyn99.coverURL = @"http://d26lpennugtm8s.cloudfront.net/stores/148/504/products/brooklynnine-nine-s11-5ba4924fbe49f70cc015132826230583-640-0.jpg";
    brooklyn99.text = @"Set in the fictional 99th Precinct of the New York City Police Department in Brooklyn, Brooklyn Nine-Nine follows a team of detectives headed by the overly serious, newly appointed Captain Raymond Holt (Andre Braugher).";
    brooklyn99.age = 14;
    brooklyn99.year = @"2017";
    brooklyn99.temp = @"5 season";
    brooklyn99.casting = @"Starring: Andy Samberg, Andre Braugher, Stephanie Beatriz";
    brooklyn99.creators = @"Creators: Daniel J. Goor, Michael Schur";
    brooklyn99.time = @"Time remaining: 13m";
    brooklyn99.relevant = @"96% relevant";
    brooklyn99.progress = 0.92;
    
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
    
    Movie * justGoWithIt = [Movie new];
    justGoWithIt.title = @"Just Go With It";
    justGoWithIt.coverURL = @"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGiEJb1tOLs6BZl43yg0HQsfBqiNpY9iLQXzCUc14i1dgS8Tvb&s.jpg";
    justGoWithIt.text = @"In 1988, Daniel Danny Maccabee (Adam Sandler), a 22-year old man, leaves his wedding right before the ceremony is about to begin after learning that his fiancee is cheating on him, and was only marrying him because he was going to be a doctor.";
    justGoWithIt.age = 12;
    justGoWithIt.year = @"2011";
    justGoWithIt.temp = @"1h 56m";
    justGoWithIt.casting = @"Starring: Adam Sandler, Jennifer Aniston, Nick Swardson";
    justGoWithIt.creators = @"Creators: Dennis Dugan";
    justGoWithIt.time = @"Time remaining: 2m";
    justGoWithIt.relevant = @"56% relevant";
    justGoWithIt.progress = 0.99;
    
    [animationMovies addObject: rickAndMorty];
    [animationMovies addObject: cars];
    [animationMovies addObject:finalSpace];
    [animationMovies addObject:spongeBob];
    [animationMovies addObject:tangled];
    
    [serieMovies addObject:theWitcher];
    [serieMovies addObject:titans];
    [serieMovies addObject:brooklyn99];
    [serieMovies addObject:sexEducation];
    
    [comedyMovies addObject:justGoWithIt];
    
    Category * animation = [Category new];
    animation.name = @"Animation";
    animation.movies = animationMovies;
    
    Category * series = [Category new];
    series.name = @"Series";
    series.movies = serieMovies;
    
    Category * comedy = [Category new];
    comedy.name = @"Comedy";
    comedy.movies = comedyMovies;
    
    [categories addObject:animation];
    [categories addObject:series];
    [categories addObject:comedy];
    
    return categories;
}

@end
