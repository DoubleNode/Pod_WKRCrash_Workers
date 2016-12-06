//
//  WKRCrash_Location_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Location_Worker.h"

@implementation WKRCrash_Location_Worker

@synthesize nextBaseWorker;
@synthesize nextLocationWorker;

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLLocation_Protocol>)nextLocationWorker
{
    id<PTCLLocation_Protocol> worker    = [[self.class alloc] init];
    worker.nextLocationWorker           = nextLocationWorker;
    return worker;
}

- (void)configure
{
    
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)locationId
                withBlock:(nullable PTCLLocationBlockVoidDAOLocationNSErrorContinue)block
           andUpdateBlock:(nullable PTCLLocationBlockVoidDAOLocationNSError)updateBlock
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doLoadObjectForId:locationId
                                         withBlock:block
                                    andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOLocation*)location
           withBlock:(nullable PTCLLocationBlockVoidDAOLocationNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doSaveObject:location
                                    withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doFollowObject:(nonnull DAOLocation*)location
             withBlock:(nullable PTCLLocationBlockVoidNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doFollowObject:location
                                      withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnfollowObject:(nonnull DAOLocation*)location
               withBlock:(nullable PTCLLocationBlockVoidNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doUnfollowObject:location
                                        withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Single Item Relationship CRUD

- (void)doLoadItemsForObject:(nonnull DAOLocation*)location
                   withBlock:(nullable PTCLLocationBlockVoidNSArrayDAOItemNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLLocationBlockVoidNSArrayDAOItemNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doLoadItemsForObject:location
                                            withBlock:block
                                       andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Collection Items CRUD

- (void)doLoadItems:(nonnull NSString*)searchId
           withText:(nonnull NSString*)search
      withLongitude:(nullable NSNumber*)longitude
       withLatitude:(nullable NSNumber*)latitude
     withParameters:(nullable NSDictionary*)parameters
           andBlock:(nullable PTCLLocationSearchBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
     andUpdateBlock:(nullable PTCLLocationSearchBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doLoadItems:searchId
                                    withText:search
                               withLongitude:longitude
                                withLatitude:latitude
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
