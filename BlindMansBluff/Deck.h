//
//  Deck.h
//  BlindMansBluff
//
//  Created by Tabetha Ketzner on 12/21/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject


@property (nonatomic, strong) NSMutableArray * cardDeck;
-(id)initWithAFullDeck;
-(void)logThisDeck;
-(void)shuffle;
-(void)dealACard;

@end
