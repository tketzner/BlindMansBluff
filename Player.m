//
//  Player.m
//  BlindMansBluff
//
//  Created by Gwen Hurtt on 4/25/12.
//  Copyright (c) 2012 NWKTC. All rights reserved.
//

#import "Player.h"

@implementation Player
@synthesize PlayerIsIn, currentCard, type;
@synthesize name, chips;

-(id)initWithType:(NSString *)playerType
{
    self = [super init];
    self.type = playerType;
    return self;
}


-(int)placeBet: (NSArray *)characterArray{
    for ( Player * temp in characterArray) {
        Card * tempCard = temp.currentCard;
        if (tempCard.value >10)
        {
            return 0;
        }
        if (tempCard.value <10) {
            return 10;
        }
    }
    //default return
    return 0;
}




@end
