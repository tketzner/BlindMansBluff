//
//  Card.h
//  BlindMansBluff
//
//  Created by Tabetha Ketzner on 11/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (nonatomic,strong) NSString * suit;
@property int value;
@property CGPoint cardCenter;

-(void)logThisCard;
-(id)initWithSuit:(NSString *)newSuit
     andWithValue:(int)cardValue
    andWithCenter:(CGPoint)theCenter;

@end
