//
//  WKRCrash_Checkin_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Checkin_Worker.h"

@implementation WKRCrash_Checkin_Worker

@synthesize nextBaseWorker;
@synthesize nextCheckinWorker;

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLCheckin_Protocol>)nextCheckinWorker
{
    id<PTCLCheckin_Protocol> worker = [[self.class alloc] init];
    worker.nextCheckinWorker        = nextCheckinWorker;
    return worker;
}

- (void)configure
{
    
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
                withBlock:(nullable PTCLCheckinBlockVoidDAOCheckinNSErrorContinue)block
           andUpdateBlock:(nullable PTCLCheckinBlockVoidDAOCheckinNSError)updateBlock
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker doLoadObjectForId:checkinId
                                        withBlock:block
                                   andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObject:(nonnull DAOCheckin*)checkin
             withBlock:(nullable PTCLCheckinBlockVoidBOOLNSError)block
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker doDeleteObject:checkin
                                     withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObjectForId:(nonnull NSString*)checkinId
                  withBlock:(nullable PTCLCheckinBlockVoidBOOLNSError)block
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker doDeleteObjectForId:checkinId
                                          withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOCheckin*)checkin
           withBlock:(nullable PTCLCheckinBlockVoidDAOCheckinNSError)block
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker doSaveObject:checkin
                                   withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doFavoriteObject:(nonnull DAOCheckin*)checkin
               withBlock:(nullable PTCLCheckinBlockVoidNSError)block
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker doFavoriteObject:checkin
                                       withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnfavoriteObject:(nonnull DAOCheckin*)checkin
                 withBlock:(nullable PTCLCheckinBlockVoidNSError)block
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker doUnfavoriteObject:checkin
                                         withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Single Item Relationship CRUD

- (void)doLoadLocationForObject:(nonnull DAOCheckin*)checkin
                      withBlock:(nullable PTCLCheckinBlockVoidDAOLocationNSErrorContinue)block
                 andUpdateBlock:(nullable PTCLCheckinBlockVoidDAOLocationNSError)updateBlock
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker doLoadLocationForObject:checkin
                                              withBlock:block
                                         andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadPhotoForObject:(nonnull DAOCheckin*)checkin
                   withBlock:(nullable PTCLCheckinBlockVoidDAOPhotoNSErrorContinue)block
              andUpdateBlock:(nullable PTCLCheckinBlockVoidDAOPhotoNSError)updateBlock
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker doLoadPhotoForObject:checkin
                                           withBlock:block
                                      andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadUserForObject:(nonnull DAOCheckin*)checkin
                  withBlock:(nullable PTCLCheckinBlockVoidDAOUserNSErrorContinue)block
             andUpdateBlock:(nullable PTCLCheckinBlockVoidDAOUserNSError)updateBlock
{
    if (self.nextCheckinWorker)
    {
        [self.nextCheckinWorker doLoadUserForObject:checkin
                                          withBlock:block
                                     andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
