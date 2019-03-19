//
//  WKRCrash_Contact_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Contact_Worker.h"

@interface WKRCrash_Contact_Worker ()

@end

@implementation WKRCrash_Contact_Worker

@synthesize nextBaseWorker;
@synthesize nextContactWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLContact_Protocol>)nextContactWorker
{
    return [[self.class alloc] initWithWorker:nextContactWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextContactWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLContact_Protocol>)nextContactWorker_
{
    self = [super initWithWorker:nextContactWorker_];
    if (self)
    {
        self.nextContactWorker = nextContactWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextContactWorker)
    {
        [self.nextContactWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextContactWorker)
    {
        [self.nextContactWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)contactId
                withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLContactBlockVoidDAOContactNSErrorContinue)block
           andUpdateBlock:(nullable PTCLContactBlockVoidDAOContactNSError)updateBlock
{
    if (self.nextContactWorker)
    {
        [self.nextContactWorker doLoadObjectForId:contactId
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

- (void)doDeleteObject:(nonnull DAOContact*)contact
             withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLContactBlockVoidBOOLNSError)block
{
    if (self.nextContactWorker)
    {
        [self.nextContactWorker doDeleteObject:contact
                                     withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOContact*)contact
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLContactBlockVoidDAOContactNSError)block
{
    if (self.nextContactWorker)
    {
        [self.nextContactWorker doSaveObject:contact
                                   withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Collection Items CRUD

- (void)doLoadObjectsForUser:(nonnull DAOUser*)user
              withParameters:(nullable NSDictionary*)parameters
                    andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLContactBlockVoidNSArrayDAOContactNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLContactBlockVoidNSArrayDAOContactNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextContactWorker)
    {
        [self.nextContactWorker doLoadObjectsForUser:user
                                      withParameters:parameters
                                            andProgress:progressBlock
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
