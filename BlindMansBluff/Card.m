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


-(NSString *)valueAsString
{
    switch (self.value) {
        case 14:
            return @"Ace";
            break;
        case 13:
            return @"King";
            break;
        case 12:
            return @"Queen";
            break;
        case 11:
            return @"Jack";
            break;
            
        default:
            return [NSString stringWithFormat:@"%d",self.value];
            break;
    }
}

-(void)cardDescription
{
    NSLog(@"%@ of %@", self.valueAsString, self.suit);
}




@end
