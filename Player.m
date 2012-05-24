//
//  Player.m
//  BlindMansBluff
//
//  Created by Gwen Hurtt on 4/25/12.
//  Copyright (c) 2012 NWKTC. All rights reserved.
//

#import "Player.h"

@implementation Player
@synthesize PlayerIsIn,currentCard;

-(id)init
{
    self = [super init];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
       
    });
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
