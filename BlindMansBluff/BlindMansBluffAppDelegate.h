//
//  BlindMansBluffAppDelegate.h
//  BlindMansBluff
//
//  Created by Tabetha Ketzner on 11/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BlindMansBluffViewController;

@interface BlindMansBluffAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, strong) IBOutlet UIWindow *window;

@property (nonatomic, strong) IBOutlet BlindMansBluffViewController *viewController;

@end
