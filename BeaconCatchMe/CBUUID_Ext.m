//
//  Ext.m
//  BeaconCatchMe
//
//  Created by Sebastian Bock on 26.09.14.
//  Copyright (c) 2014 mariomeili. All rights reserved.
//

#import "CBUUID_Ext.h"

@implementation CBUUID(Ext)
- (NSString *)representativeString;
{
    NSData *data = self.data;
    
    NSUInteger bytesToConvert = [data length];
    const unsigned char *uuidBytes = [data bytes];
    NSMutableString *outputString = [NSMutableString stringWithCapacity:16];
    
    for (NSUInteger currentByteIndex = 0; currentByteIndex < bytesToConvert; currentByteIndex++)
    {
        switch (currentByteIndex)
        {
            case 3:
            case 5:
            case 7:
            case 9:[outputString appendFormat:@"%02x-", uuidBytes[currentByteIndex]]; break;
            default:[outputString appendFormat:@"%02x", uuidBytes[currentByteIndex]];
        }
        
    }
    
    return outputString;
}
@end