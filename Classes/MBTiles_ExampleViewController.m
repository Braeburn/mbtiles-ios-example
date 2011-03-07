//
//  MBTiles_ExampleViewController.m
//  MBTiles Example
//
//  Created by Justin R. Miller on 3/7/11.
//  Copyright 2011 Development Seed. All rights reserved.
//

#define kStartingLat   30.0f
#define kStartingLon  -10.0f
#define kStartingZoom   1.5f

#import "MBTiles_ExampleViewController.h"

#import "RMMBTilesTileSource.h"
#import "RMMapContents.h"

@implementation MBTiles_ExampleViewController

@synthesize mapView;

- (void)viewDidLoad
{
    CLLocationCoordinate2D startingPoint;
    
    startingPoint.latitude  = kStartingLat;
    startingPoint.longitude = kStartingLon;
    
    NSURL *tilesURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"control-room-0.2.0" ofType:@"mbtiles"]];

    RMMBTilesTileSource *source = [[[RMMBTilesTileSource alloc] initWithTileSetURL:tilesURL] autorelease];
    
	[[[RMMapContents alloc] initWithView:self.mapView 
                              tilesource:source
                            centerLatLon:startingPoint
                               zoomLevel:kStartingZoom
                            maxZoomLevel:[source maxZoom]
                            minZoomLevel:[source minZoom]
                         backgroundImage:nil] autorelease];
    
    mapView.enableRotate = NO;
    mapView.deceleration = NO;
    
    mapView.backgroundColor = [UIColor blackColor];
    
    mapView.contents.zoom = kStartingZoom;
}

- (void)dealloc
{
    [mapView release];
    
    [super dealloc];
}

@end