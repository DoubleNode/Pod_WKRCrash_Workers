//
//  WKRCrash_Checkin_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Checkin_Worker.h"

@interface WKRCrash_Checkin_Worker ()

@end

@implementation WKRCrash_Checkin_Worker

@synthesize nextBaseWorker;
@synthesize nextCheckinWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLCheckin_Protocol>)nextCheckinWorker
{
    return [[self.class alloc] initWithWorker:nextCheckinWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextCheckinWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLCheckin_Protocol>)nextCheckinWorker_
{
    self = [super initWithWorker:nextCheckinWorker_];
    if (self)
    {
        self.nextCheckinWorker = nextCheckinWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)checkinId
                withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCheckinBlockVoidDAOCheckinNSErrorContinue)block
           andUpdateBlock:(nullable PTCLCheckinBlockVoidDAOCheckinNSError)updateBlock
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker doLoadObjectForId:checkinId
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

- (void)doDeleteObject:(nonnull DAOCheckin*)checkin
             withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCheckinBlockVoidBOOLNSError)block
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker doDeleteObject:checkin
                                     withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObjectForId:(nonnull NSString*)checkinId
                  withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCheckinBlockVoidBOOLNSError)block
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker doDeleteObjectForId:checkinId
                                          withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOCheckin*)checkin
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCheckinBlockVoidDAOCheckinNSError)block
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker doSaveObject:checkin
                                   withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doFavoriteObject:(nonnull DAOCheckin*)checkin
               withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCheckinBlockVoidNSError)block
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker doFavoriteObject:checkin
                                       withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnfavoriteObject:(nonnull DAOCheckin*)checkin
                 withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCheckinBlockVoidNSError)block
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker doUnfavoriteObject:checkin
                                         withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Single Item Relationship CRUD

- (void)doLoadLocationForObject:(nonnull DAOCheckin*)checkin
                      withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCheckinBlockVoidDAOLocationNSErrorContinue)block
                 andUpdateBlock:(nullable PTCLCheckinBlockVoidDAOLocationNSError)updateBlock
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker doLoadLocationForObject:checkin
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

- (void)doLoadPhotoForObject:(nonnull DAOCheckin*)checkin
                   withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCheckinBlockVoidDAOPhotoNSErrorContinue)block
              andUpdateBlock:(nullable PTCLCheckinBlockVoidDAOPhotoNSError)updateBlock
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker doLoadPhotoForObject:checkin
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

- (void)doLoadUserForObject:(nonnull DAOCheckin*)checkin
                  withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCheckinBlockVoidDAOUserNSErrorContinue)block
             andUpdateBlock:(nullable PTCLCheckinBlockVoidDAOUserNSError)updateBlock
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker doLoadUserForObject:checkin
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
