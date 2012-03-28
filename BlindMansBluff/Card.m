//
//  Card.m
//  BlindMansBluff
//
//  Created by Tabetha Ketzner on 11/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Card.h"

@implementation Card
@synthesize cardCenter,value,suit;

-(id)initWithSuit:(NSString *)newSuit andWithValue:(int)cardValue andWithCenter:(CGPoint)theCenter 
{
    self.suit = newSuit;
    self.value = cardValue;
    self.cardCenter = theCenter;
    return self;
}


-(void)logThisCard
{
    NSLog(@"%d of %@",value,suit);
    NSLog(@"Located at %.1f,%.1f",cardCenter.x, cardCenter.y);
}


@end
