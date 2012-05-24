//
//  Player.h
//  BlindMansBluff
//
//  Created by Gwen Hurtt on 4/25/12.
//  Copyright (c) 2012 NWKTC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Card.h"

@interface Player : NSObject

@property BOOL PlayerIsIn;
@property (nonatomic,strong ) Card * currentCard;

-(int)placeBet: (NSArray *)characterArray;
@end
