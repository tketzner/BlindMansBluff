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
//Player1, player2 and personLabel to identify $ of bets  - TK
- (IBAction)personBetButton:(id)sender;
//Game info label for alerting person of betting turn and winner of game - TK
@property (strong, nonatomic) IBOutlet UILabel *gameInfoLabel;
- (IBAction)dealCardsButton:(id)sender;
@property (strong, nonatomic) UIImageView *personCardImage;
@property (strong, nonatomic) UIView *personCard;
@property (strong, nonatomic) UIImageView *player1CardImage;
@property (strong, nonatomic) UIView *player1Card;
@property (strong, nonatomic) UIImageView *player2CardImage;
@property (strong, nonatomic) UIView *player2Card;
@property(nonatomic, strong) Player * dealer;
@property (strong, nonatomic) IBOutlet UILabel *chipLabel;

-(void)updateChipsCountView;


@end
