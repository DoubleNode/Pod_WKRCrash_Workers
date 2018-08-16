//
//  WKRCrash_Notification_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Notification_Worker.h"

@interface WKRCrash_Notification_Worker ()

@end

@implementation WKRCrash_Notification_Worker

@synthesize nextBaseWorker;
@synthesize nextNotificationWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLNotification_Protocol>)nextNotificationWorker
{
    return [[self.class alloc] initWithWorker:nextNotificationWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextNotificationWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLNotification_Protocol>)nextNotificationWorker_
{
    self = [super initWithWorker:nextNotificationWorker_];
    if (self)
    {
        self.nextNotificationWorker = nextNotificationWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextNotificationWorker)
    {
        [self.nextNotificationWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextNotificationWorker)
    {
        [self.nextNotificationWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)notificationId
                withBlock:(nullable PTCLNotificationBlockVoidDAONotificationNSErrorContinue)block
           andUpdateBlock:(nullable PTCLNotificationBlockVoidDAONotificationNSError)updateBlock
{
    if (self.nextNotificationWorker)
    {
        [self.nextNotificationWorker doLoadObjectForId:notificationId
                                             withBlock:block
                                        andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObject:(nonnull DAONotification*)notification
             withBlock:(nullable PTCLNotificationBlockVoidBOOLNSError)block
{
    if (self.nextNotificationWorker)
    {
        [self.nextNotificationWorker doDeleteObject:notification
                                          withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAONotification*)notification
           withBlock:(nullable PTCLNotificationBlockVoidDAONotificationNSError)block
{
    if (self.nextNotificationWorker)
    {
        [self.nextNotificationWorker doSaveObject:notification
                                        withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Collection Items CRUD

- (void)doLoadTransmissionsForObject:(nonnull DAONotification*)notification
                           withBlock:(nullable PTCLNotificationBlockVoidNSArrayDAOTransmissionNSUIntegerNSUIntegerNSErrorContinue)block
                      andUpdateBlock:(nullable PTCLNotificationBlockVoidNSArrayDAOTransmissionNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextNotificationWorker)
    {
        [self.nextNotificationWorker doLoadTransmissionsForObject:notification
                                                        withBlock:block
                                                   andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadObjectsForUser:(nonnull DAOUser*)user
              withParameters:(nullable NSDictionary*)parameters
                    andBlock:(nullable PTCLNotificationBlockVoidNSArrayDAONotificationNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLNotificationBlockVoidNSArrayDAONotificationNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextNotificationWorker)
    {
        [self.nextNotificationWorker doLoadObjectsForUser:user
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
