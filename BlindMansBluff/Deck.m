//
//  Deck.m
//  BlindMansBluff
//
//  Created by Tabetha Ketzner on 12/21/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Deck.h"

@implementation Deck
@synthesize cardDeck;

-(id)initWithAFullDeck
{
    
    if(!cardDeck)
    {
        cardDeck = [[NSMutableArray alloc]initWithCapacity:52];
    }
    
    // int i = 1 for Ace, 13 cards in a suit
    for (int i = 1; i<=13; i++) 
    {
        Card * temp1 = [[Card alloc] initWithSuit:@"Clubs" andWithValue:i andWithCenter:CGPointMake(1, 1)];
        Card * temp2 = [[Card alloc] initWithSuit:@"Spades" andWithValue:i andWithCenter:CGPointMake(1, 1)];
        Card * temp3 = [[Card alloc] initWithSuit:@"Diamonds" andWithValue:i andWithCenter:CGPointMake(1, 1)];
        Card * temp4 = [[Card alloc] initWithSuit:@"Hearts" andWithValue:i andWithCenter:CGPointMake(1, 1)];
        [cardDeck addObject:temp1];
        [cardDeck addObject:temp2];
        [cardDeck addObject:temp3];
        [cardDeck addObject:temp4];
    }
    
    return self;
}


-(void)logThisDeck
{
    //0 for the start of an array
    for (int i = 0; i< [cardDeck count]; i++) 
    {
        [[cardDeck objectAtIndex:i] cardDescription];
    }
}
-(void)shuffle
{
    
    for (int i = [cardDeck count] - 1; i>0; i--) 
    {
        int randomChoice = arc4random() % i;
        [cardDeck exchangeObjectAtIndex:i withObjectAtIndex:randomChoice];
    }
}
-(void)dealACard
{
    for (int i = 0; i < [cardDeck count]; i--)
    {
        Card * tempCard = [cardDeck objectAtIndex:0];
        Card * tempCard2 = [cardDeck objectAtIndex:1];
        Card * tempCard3 = [cardDeck objectAtIndex:2];
        [tempCard cardDescription];
        [tempCard2 cardDescription];
        [tempCard3 cardDescription];
    }
   // [self performSelectorOnMainThread:@selector(animateDeal:) withObject:cardDeck waitUntilDone:YES];
    // Jeremy had me comment this out it wasnt letting the program run
}

    


@end
