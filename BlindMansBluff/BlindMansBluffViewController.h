//
//  BlindMansBluffViewController.h
//  BlindMansBluff
//
//  Created by Tabetha Ketzner on 11/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Deck.h"


@interface BlindMansBluffViewController : UIViewController
@property (nonatomic, strong) Deck * temp;
@property (nonatomic, strong) UIView * cardArea;
@property (nonatomic, strong) UIImageView * cardSprite;
@end
