//
//  WKRCrash_UserDevice_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_UserDevice_Worker.h"

@interface WKRCrash_UserDevice_Worker ()

@end

@implementation WKRCrash_UserDevice_Worker

@synthesize nextBaseWorker;
@synthesize nextUserDeviceWorker;

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLUserDevice_Protocol>)nextUserDeviceWorker
{
    return [[self.class alloc] initWithWorker:nextUserDeviceWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextUserDeviceWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLUserDevice_Protocol>)nextUserDeviceWorker_
{
    self = [super initWithWorker:nextUserDeviceWorker_];
    if (self)
    {
        self.nextUserDeviceWorker = nextUserDeviceWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextUserDeviceWorker)
    {
        [self.nextUserDeviceWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextUserDeviceWorker)
    {
        [self.nextUserDeviceWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)userDeviceId
                andUserId:(nonnull NSString*)userId
                withBlock:(nullable PTCLUserDeviceBlockVoidDAOUserDeviceNSErrorContinue)block
           andUpdateBlock:(nullable PTCLUserDeviceBlockVoidDAOUserDeviceNSError)updateBlock
{
    if (self.nextUserDeviceWorker)
    {
        [self.nextUserDeviceWorker doLoadObjectForId:userDeviceId
                                           andUserId:userId
                                           withBlock:block
                                      andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObject:(nonnull DAOUserDevice*)userDevice
             withBlock:(nullable PTCLUserDeviceBlockVoidBOOLNSError)block
{
    if (self.nextUserDeviceWorker)
    {
        [self.nextUserDeviceWorker doDeleteObject:userDevice
                                        withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObjectForId:(nonnull NSString*)userDeviceId
                  andUserId:(nonnull NSString*)userId
                  withBlock:(nullable PTCLUserDeviceBlockVoidBOOLNSError)block
{
    if (self.nextUserDeviceWorker)
    {
        [self.nextUserDeviceWorker doDeleteObjectForId:userDeviceId
                                             andUserId:userId
                                             withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOUserDevice*)userDevice
           withBlock:(nullable PTCLUserDeviceBlockVoidBOOLNSError)block
{
    if (self.nextUserDeviceWorker)
    {
        [self.nextUserDeviceWorker doSaveObject:userDevice
                                      withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Collection Items CRUD

- (void)doLoadObjectsForUser:(nonnull DAOUser*)user
              withParameters:(nullable NSDictionary*)parameters
                    andBlock:(nullable PTCLUserDeviceBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLUserDeviceBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextUserDeviceWorker)
    {
        [self.nextUserDeviceWorker doLoadObjectsForUser:user
                                         withParameters:parameters
                                               andBlock:block
                                         andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
