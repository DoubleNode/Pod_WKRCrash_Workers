//
//  WKRCrash_UserNotificationSetting_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_UserNotificationSetting_Worker.h"

@interface WKRCrash_UserNotificationSetting_Worker ()

@end

@implementation WKRCrash_UserNotificationSetting_Worker

@synthesize nextBaseWorker;
@synthesize nextUserNotificationSettingWorker;

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLUserNotificationSetting_Protocol>)nextUserNotificationSettingWorker
{
    return [[self.class alloc] initWithWorker:nextUserNotificationSettingWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextUserNotificationSettingWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLUserNotificationSetting_Protocol>)nextUserNotificationSettingWorker_
{
    self = [super initWithWorker:nextUserNotificationSettingWorker_];
    if (self)
    {
        self.nextUserNotificationSettingWorker = nextUserNotificationSettingWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextUserNotificationSettingWorker)
    {
        [self.nextUserNotificationSettingWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextUserNotificationSettingWorker)
    {
        [self.nextUserNotificationSettingWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)userNotificationSettingId
                andUserId:(nonnull NSString*)userId
                withBlock:(nullable PTCLUserNotificationSettingBlockVoidDAOUserNotificationSettingNSErrorContinue)block
           andUpdateBlock:(nullable PTCLUserNotificationSettingBlockVoidDAOUserNotificationSettingNSError)updateBlock
{
    if (self.nextUserNotificationSettingWorker)
    {
        [self.nextUserNotificationSettingWorker doLoadObjectForId:userNotificationSettingId
                                                        andUserId:userId
                                                        withBlock:block
                                                   andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOUserNotificationSetting*)userNotificationSetting
           withBlock:(nullable PTCLUserNotificationSettingBlockVoidBOOLNSError)block
{
    if (self.nextUserNotificationSettingWorker)
    {
        [self.nextUserNotificationSettingWorker doSaveObject:userNotificationSetting
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
                    andBlock:(nullable PTCLUserNotificationSettingBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLUserNotificationSettingBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextUserNotificationSettingWorker)
    {
        [self.nextUserNotificationSettingWorker doLoadObjectsForUser:user
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
