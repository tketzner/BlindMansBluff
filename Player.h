//
//  Player.h
//  BlindMansBluff
//
//  Created by Gwen Hurtt on 4/25/12.
//  Copyright (c) 2012 NWKTC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Card.h"
@interface Player : UIViewController

// players should be in the view controller
{
    Player * player1;
    Player * player2;
    Player * person;
}
@property BOOL PlayerIsIn;
@property (nonatomic,strong )Card * currentCard;
-(int)placeBet: (NSArray *)characterArray;
@end
