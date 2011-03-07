//
//  MBTiles_ExampleViewController.h
//  MBTiles Example
//
//  Created by Justin R. Miller on 3/7/11.
//  Copyright 2011 Development Seed. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "RMMapView.h"

@interface MBTiles_ExampleViewController : UIViewController
{
    RMMapView *mapView;
}

@property (nonatomic, retain) IBOutlet RMMapView *mapView;

@end