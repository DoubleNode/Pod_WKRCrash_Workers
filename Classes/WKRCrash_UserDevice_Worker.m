//
//  WKRCrash_UserDevice_Worker.m
//  DoubleNode Crash Workers
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC.
//
//  WKRCore_Crash_Workers is released under the MIT license. See LICENSE for details.
//

#import "WKRCrash_UserDevice_Worker.h"

@interface WKRCrash_UserDevice_Worker ()

@end

@implementation WKRCrash_UserDevice_Worker

@synthesize nextBaseWorker;
@synthesize nextUserDeviceWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

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
                withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLUserDeviceBlockVoidDAOUserDeviceNSErrorContinue)block
           andUpdateBlock:(nullable PTCLUserDeviceBlockVoidDAOUserDeviceNSError)updateBlock
{
    if (self.nextUserDeviceWorker)
    {
        [self.nextUserDeviceWorker doLoadObjectForId:userDeviceId
                                           andUserId:userId
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

- (void)doDeleteObject:(nonnull DAOUserDevice*)userDevice
             withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLUserDeviceBlockVoidBOOLNSError)block
{
    if (self.nextUserDeviceWorker)
    {
        [self.nextUserDeviceWorker doDeleteObject:userDevice
                                        withProgress:progressBlock
                 andBlock:block];
        return;
   }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObjectForId:(nonnull NSString*)userDeviceId
                  andUserId:(nonnull NSString*)userId
                  withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLUserDeviceBlockVoidBOOLNSError)block
{
    if (self.nextUserDeviceWorker)
    {
        [self.nextUserDeviceWorker doDeleteObjectForId:userDeviceId
                                             andUserId:userId
                                             withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOUserDevice*)userDevice
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLUserDeviceBlockVoidBOOLNSError)block
{
    if (self.nextUserDeviceWorker)
    {
        [self.nextUserDeviceWorker doSaveObject:userDevice
                                      withProgress:progressBlock
                 andBlock:block];
        return;
   }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Collection Items CRUD

- (void)doLoadObjectsForUser:(nonnull DAOUser*)user
              withParameters:(nullable NSDictionary*)parameters
                    andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLUserDeviceBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLUserDeviceBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextUserDeviceWorker)
    {
        [self.nextUserDeviceWorker doLoadObjectsForUser:user
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
