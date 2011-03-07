//
//  MBTiles_ExampleAppDelegate.h
//  MBTiles Example
//
//  Created by Justin R. Miller on 3/7/11.
//  Copyright 2011 Code Sorcery Workshop. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MBTiles_ExampleViewController;

@interface MBTiles_ExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MBTiles_ExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MBTiles_ExampleViewController *viewController;

@end

