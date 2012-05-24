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
@synthesize temp, player1, player2, person;


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
    temp = [[Deck alloc]initWithAFullDeck];
    [temp shuffle];
    [temp dealACard];
    

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
        
}
@end
