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

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLUserIdentification_Protocol>)nextUserIdentificationWorker
{
    return [[self.class alloc] initWithWorker:nextUserIdentificationWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextUserIdentificationWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLUserIdentification_Protocol>)nextUserIdentificationWorker_
{
    self = [super initWithWorker:nextUserIdentificationWorker_];
    if (self)
    {
        self.nextUserIdentificationWorker = nextUserIdentificationWorker_;
    }
    
    return self;
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

- (void)doIdentifyUserWithIdentifier:(nonnull NSString*)identifier
                         andUsername:(nonnull NSString*)username
                            andEmail:(nonnull NSString*)email
{
    if (self.nextUserIdentificationWorker)
    {
        [self.nextUserIdentificationWorker doIdentifyUserWithIdentifier:identifier
                                                            andUsername:username
                                                               andEmail:email];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
