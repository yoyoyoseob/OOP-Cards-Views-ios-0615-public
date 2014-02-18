//
//  CardGridViewController.m
//  OOP-Cards-Views
//
//  Created by Al Tyus on 2/18/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "CardGridViewController.h"

@interface CardGridViewController ()

@end

@implementation CardGridViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    for (UIView *cardView in self.cardsCollection)
    {
        if ([cardView isKindOfClass:[UIImageView class]])
        {
            NSLog(@"%fpts x %fpts", cardView.frame.size.width, cardView.frame.size.height);
            NSLog(@"x = %f x y = %f", cardView.frame.origin.x, cardView.frame.origin.y);
        }
    }
    
    UIImageView *card1 = self.cardsCollection[0];
    UIImageView *card2 = self.cardsCollection[1];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
