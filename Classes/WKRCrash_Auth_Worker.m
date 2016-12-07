//
//  WKRCrash_Auth_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Auth_Worker.h"

@implementation WKRCrash_Auth_Worker

@synthesize nextBaseWorker;
@synthesize nextAuthWorker;

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLAuth_Protocol>)nextAuthWorker
{
    return [[self.class alloc] initWithWorker:nextAuthWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextAuthWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLAuth_Protocol>)nextAuthWorker_
{
    self = [super initWithWorker:nextAuthWorker_];
    if (self)
    {
        self.nextAuthWorker = nextAuthWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextAuthWorker)
    {
        [self.nextAuthWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextAuthWorker)
    {
        [self.nextAuthWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic

- (void)doLoadObjectForUser:(nonnull DAOUser*)user
                  withBlock:(nullable PTCLAuthBlockVoidDAOAuthNSErrorContinue)block
             andUpdateBlock:(nullable PTCLAuthBlockVoidDAOAuthNSError)updateBlock
{
    if (self.nextAuthWorker)
    {
        [self.nextAuthWorker doLoadObjectForUser:user
                                       withBlock:block
                                  andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
