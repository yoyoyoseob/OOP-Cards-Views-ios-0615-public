//
//  CardGridViewController.m
//  OOP-Cards-Views
//
//  Created by Al Tyus on 2/18/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "CardGridViewController.h"

@interface CardGridViewController ()
@property (nonatomic) BOOL is30;

- (IBAction)resizeViews:(id)sender;

@end

@implementation CardGridViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    for (UIView *cardView in self.cardsCollection)
//    {
//        if ([cardView isKindOfClass:[UIImageView class]])
//        {
//            
//            NSLog(@"%fpts x %fpts", cardView.frame.size.width, cardView.frame.size.height);
//            NSLog(@"x = %f x y = %f", cardView.frame.origin.x, cardView.frame.origin.y);
//        }
//    }
    
    self.is30 = NO;
    
    [self resizeView20];
    
//    CGFloat yOffSet = 20;
//    CGFloat xOffSet = 20;
//    NSUInteger count = 0;
//    
//    for (NSUInteger rows = 0; rows < 4; rows ++){
//        
//        for (NSUInteger column = 0; column < 3; column ++){
//            UIImageView *magicCard = self.cardsCollection[count];
//            magicCard.frame = CGRectMake(xOffSet, yOffSet, 80, 117);
//            count += 1;
//            xOffSet += 100;
//            //yOffSet += 137;
//        }
//        yOffSet += 137;
//        xOffSet = 20;
//    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)resizeViews:(id)sender {
    if (self.is30){
        [self resizeView20];
    }
    else {
        [self resizeView30];
    }

}

-(void)resizeView30
{
    CGFloat yOffSet = 30;
    CGFloat xOffSet = 30;
    NSUInteger count = 0;
    self.is30 = YES;
    
    for (NSUInteger rows = 0; rows < 4; rows ++){
        
        for (NSUInteger column = 0; column < 3; column ++){
            UIImageView *magicCard = self.cardsCollection[count];
            magicCard.frame = CGRectMake(xOffSet, yOffSet, 66.66, 104.5);
            count += 1;
            xOffSet += 96.66;
            //yOffSet += 137;
        }
        yOffSet += 134.5;
        xOffSet = 30;
    }
}

-(void)resizeView20
{
    CGFloat yOffSet = 20;
    CGFloat xOffSet = 20;
    NSUInteger count = 0;
    self.is30 = NO;
    
    for (NSUInteger rows = 0; rows < 4; rows ++){
        
        for (NSUInteger column = 0; column < 3; column ++){
            UIImageView *magicCard = self.cardsCollection[count];
            magicCard.frame = CGRectMake(xOffSet, yOffSet, 80, 117);
            count += 1;
            xOffSet += 100;
            //yOffSet += 137;
        }
        yOffSet += 137;
        xOffSet = 20;
    }
}
    
@end
