//
//  BlindMansBluffViewController.m
//  BlindMansBluff
//
//  Created by Tabetha Ketzner on 11/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BlindMansBluffViewController.h"


@implementation BlindMansBluffViewController
@synthesize temp, cardSprite, cardArea;


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
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}
- (void)animateDealWithArray:(NSArray *)array {
    
   // static CGFloat duration = 1;
   // static CGSize  cardSize = {75,  100};
   // static CGPoint playerTo = {120, 300};
   // static CGPoint personTo = {120, 70};
    
    cardSprite = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cards.png"]];
    cardArea = [[UIView alloc] initWithFrame:CGRectMake(80.0, 60.0, 75.0, 100.0)];
    cardArea.clipsToBounds = YES;
    
  /*  if ([[array objectAtIndex:0] isKindOfClass:) {
        // Player card, so show the "face"
        [card setImage:[UIImage imageNamed:[(Player *)[array objectAtIndex:0] imagePath]]];
        [UIView animateWithDuration:duration
                         animations:^{
                             [card setFrame:CGRectMake(playerTo.x, playerTo.y, cardSize.width, /cardSize.height)];
                         }
                         completion:^(BOOL finished) {
                             [self dealNext:array];
                         }
         ];
    } else {
        // Live Person card, so show the back
        [card setImage:[UIImage imageNamed:@"backOfCard.jpg"]];
        [UIView animateWithDuration:duration
                         animations:^{
                             [card setFrame:CGRectMake(personTo.x, personTo.y, cardSize.width, cardSize.height)];
                         }
                         completion:^(BOOL finished) {
                             [self dealNext:array];
                         }
         ];
    }
  */       
   
}

- (void)dealNext:(NSArray *)array {
    int count = [array count];
    if (count > 1) {
        NSArray *newArray = [array subarrayWithRange:NSMakeRange(1, count - 1)];
        [self animateDealWithArray:newArray];
    }
}

@end
