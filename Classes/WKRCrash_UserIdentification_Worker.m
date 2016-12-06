//
//  WKRCrash_UserIdentification_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_UserIdentification_Worker.h"

@interface WKRCrash_UserIdentification_Worker ()

@end

@implementation WKRCrash_UserIdentification_Worker

@synthesize nextBaseWorker;
@synthesize nextUserIdentificationWorker;

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLUserIdentification_Protocol>)nextUserIdentificationWorker
{
    id<PTCLUserIdentification_Protocol>   worker  = [[self.class alloc] init];
    worker.nextUserIdentificationWorker = nextUserIdentificationWorker;
    return worker;
}

- (void)configure
{
    
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextUserIdentificationWorker)
    {
        [self.nextUserIdentificationWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextUserIdentificationWorker)
    {
        [self.nextUserIdentificationWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic

- (void)doUserIdentifier:(NSString*_Nonnull)identifier
            withUsername:(NSString* _Nonnull)username
                andEmail:(NSString* _Nonnull)email
{
    if (self.nextUserIdentificationWorker)
    {
        [self.nextUserIdentificationWorker doUserIdentifier:identifier
                                               withUsername:username
                                                   andEmail:email];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
