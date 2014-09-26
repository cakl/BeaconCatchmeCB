//
//  ViewController.h
//  BeaconCatchMe
//
//  Created by Mario Meili on 23/09/14.
//  Copyright (c) 2014 mariomeili. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreBluetooth/CoreBluetooth.h>

@interface ViewController : UIViewController <CBPeripheralManagerDelegate, CBCentralManagerDelegate>

@property (strong, nonatomic) NSDictionary *advertisingData;

@property (strong, nonatomic) CBPeripheralManager *peripheralManager;
@property (strong, nonatomic) CBCentralManager *centralManager;
@property (strong, nonatomic) NSString* identifier;
@property (strong, nonatomic) NSString* peripheralName;

@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UITextField *uuidTextField;
@property (weak, nonatomic) IBOutlet UITextField *peripferalNameTextField;



@end

