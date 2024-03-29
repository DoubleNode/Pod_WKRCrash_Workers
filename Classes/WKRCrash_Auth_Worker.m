//
//  WKRCrash_Auth_Worker.m
//  DoubleNode Crash Workers
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC.
//
//  WKRCore_Crash_Workers is released under the MIT license. See LICENSE for details.
//

#import "WKRCrash_Auth_Worker.h"

@interface WKRCrash_Auth_Worker ()

@end

@implementation WKRCrash_Auth_Worker

@synthesize nextBaseWorker;
@synthesize nextAuthWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

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
               withProgress:(nullable PTCLProgressBlock)progressBlock
                   andBlock:(nullable PTCLAuthBlockVoidDAOAuthNSErrorContinue)block
             andUpdateBlock:(nullable PTCLAuthBlockVoidDAOAuthNSError)updateBlock
{
    if (self.nextAuthWorker)
    {
        [self.nextAuthWorker doLoadObjectForUser:user
                                    withProgress:progressBlock
                                        andBlock:block
                                  andUpdateBlock:updateBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
