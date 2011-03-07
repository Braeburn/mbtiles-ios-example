//
//  MBTiles_ExampleAppDelegate.m
//  MBTiles Example
//
//  Created by Justin R. Miller on 3/7/11.
//  Copyright 2011 Development Seed. All rights reserved.
//

#import "MBTiles_ExampleAppDelegate.h"
#import "MBTiles_ExampleViewController.h"

@implementation MBTiles_ExampleAppDelegate

@synthesize window;
@synthesize viewController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.

    // Add the view controller's view to the window and display.
    [self.window addSubview:viewController.view];
    [self.window makeKeyAndVisible];

    return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
