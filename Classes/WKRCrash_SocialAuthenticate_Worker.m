//
//  WKRDCrash_SocialAuthenticate_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_SocialAuthenticate_Worker.h"

@interface WKRCrash_SocialAuthenticate_Worker ()

@end

@implementation WKRCrash_SocialAuthenticate_Worker

@synthesize nextBaseWorker;
@synthesize nextSocialAuthenticateWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLSocialAuthenticate_Protocol>)nextSocialAuthenticateWorker
{
    return [[self.class alloc] initWithWorker:nextSocialAuthenticateWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextSocialAuthenticateWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLSocialAuthenticate_Protocol>)nextSocialAuthenticateWorker_
{
    self = [super initWithWorker:nextSocialAuthenticateWorker_];
    if (self)
    {
        self.nextSocialAuthenticateWorker = nextSocialAuthenticateWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextSocialAuthenticateWorker)
    {
        [self.nextSocialAuthenticateWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextSocialAuthenticateWorker)
    {
        [self.nextSocialAuthenticateWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic

- (void)doAuthenticateWithCompletion:(PTCLSocialAuthenticateBlockVoidSessionNSError _Nullable)completion
{
    if (self.nextSocialAuthenticateWorker)
    {
        [self.nextSocialAuthenticateWorker doAuthenticateWithCompletion:completion];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doRetrieveUser:(nullable NSString*)userId
           withSession:(nullable PTCLSocialAuthenticate_Session*)session
        withCompletion:(nullable PTCLSocialAuthenticateBlockVoidUserNSError)completion
{
    if (self.nextSocialAuthenticateWorker)
    {
        [self.nextSocialAuthenticateWorker doRetrieveUser:userId
                                              withSession:session
                                           withCompletion:completion];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
