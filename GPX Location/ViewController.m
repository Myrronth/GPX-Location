//
//  ViewController.m
//  GPX Location
//
//  Created by Tobias Kreß on 16.01.16.
//  Copyright © 2016 Grünzeug GmbH. All rights reserved.
//

#import "ViewController.h"
@import MapKit;

@interface ViewController () <CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@property (strong, nonatomic) CLLocationManager *manager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.manager = [[CLLocationManager alloc] init];

    if ([CLLocationManager authorizationStatus] == kCLAuthorizationStatusNotDetermined) {
        [self.manager requestWhenInUseAuthorization];
    }

    self.mapView.userTrackingMode = MKUserTrackingModeFollow;
}

@end
