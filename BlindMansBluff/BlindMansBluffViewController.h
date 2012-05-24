//
//  BlindMansBluffViewController.h
//  BlindMansBluff
//
//  Created by Tabetha Ketzner on 11/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Deck.h"
#import "Player.h"


@interface BlindMansBluffViewController : UIViewController
@property (nonatomic, strong) Deck * temp;
@property (nonatomic, strong) Player * player1;
@property (nonatomic, strong) Player * player2;
@property (nonatomic, strong) Player * person;
@property (strong, nonatomic) IBOutlet UILabel *player1Label;
@property (strong, nonatomic) IBOutlet UILabel *player2Label;
@property (strong, nonatomic) IBOutlet UILabel *personLabel;
- (IBAction)personBetButton:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *gameInfoLabel;
- (IBAction)dealCardsButton:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *personCardImage;
@property (strong, nonatomic) IBOutlet UIImageView *player1CardImage;
@property (strong, nonatomic) IBOutlet UIImageView *player2CardImage;
@end
