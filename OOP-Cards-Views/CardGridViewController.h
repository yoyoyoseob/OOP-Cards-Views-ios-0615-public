//
//  CardGridViewController.h
//  OOP-Cards-Views
//
//  Created by Al Tyus on 2/18/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CardGridViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *cardsCollection;


@end
