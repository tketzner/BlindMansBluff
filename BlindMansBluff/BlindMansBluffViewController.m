//
//  BlindMansBluffViewController.m
//  BlindMansBluff
//
//  Created by Tabetha Ketzner on 11/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BlindMansBluffViewController.h"


@implementation BlindMansBluffViewController
@synthesize personCardImage;
@synthesize player1CardImage;
@synthesize player2CardImage;
@synthesize gameInfoLabel;
@synthesize player1Label;
@synthesize player2Label;
@synthesize personLabel;
@synthesize temp, player1, player2, person, player1Card, player2Card, personCard;


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

// Gwen placed this for checking how this works.
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    
    

    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [self setPlayer1Label:nil];
    [self setPlayer2Label:nil];
    [self setPersonLabel:nil];
    [self setGameInfoLabel:nil];
    [self setPersonCardImage:nil];
    [self setPlayer1CardImage:nil];
    [self setPlayer2CardImage:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    //Fixed orientation DD
    return interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation ==UIInterfaceOrientationLandscapeRight;
}

- (IBAction)personBetButton:(id)sender {
    
}
- (IBAction)dealCardsButton:(id)sender {
    temp = [[Deck alloc]initWithAFullDeck];
    [temp shuffle];
    [temp dealACard];
    
    personCardImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"backOfCard.png"]];
    personCard = [[UIView alloc] initWithFrame:CGRectMake(474, 260, 75.0, 100.0)];
    personCard.clipsToBounds = YES;
    [personCard addSubview:personCardImage];
    [self.view addSubview:personCard];
    
    player1CardImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cards.png"]];
    player1Card = [[UIView alloc] initWithFrame:CGRectMake(278, 260, 75.0, 100.0)];
    player1Card.clipsToBounds = YES;
    [player1Card addSubview:player1CardImage];
    [self.view addSubview:player1Card];
    
    player2CardImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cards.png"]];
    player2Card = [[UIView alloc] initWithFrame:CGRectMake(661, 260, 75.0, 100.0)];
    player2Card.clipsToBounds = YES;
    [player2Card addSubview:player2CardImage];
    [self.view addSubview:player2Card];
    
    // Figure out if the first object is a player or live person
  //  if (!personCardImage) {
        [UIImage imageNamed:@"cards.png"];
  //  }else{
        // Live Person card, so show the back
  //      [UIImage imageNamed:@"backOfCard.jpg"];
        
  //  }
    
          
        
}


@end
