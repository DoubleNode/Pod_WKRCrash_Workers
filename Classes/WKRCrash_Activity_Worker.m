//
//  WKRCrash_Activity_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Activity_Worker.h"

@implementation WKRCrash_Activity_Worker

@synthesize nextBaseWorker;
@synthesize nextActivityWorker;

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLActivity_Protocol>)nextActivityWorker
{
    return [[self.class alloc] initWithWorker:nextActivityWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextActivityWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLActivity_Protocol>)nextActivityWorker_
{
    self = [super initWithWorker:nextActivityWorker_];
    if (self)
    {
        self.nextActivityWorker = nextActivityWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextActivityWorker)
    {
        [self.nextActivityWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextActivityWorker)
    {
        [self.nextActivityWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)activityId
                withBlock:(nullable PTCLActivityBlockVoidDAOActivityNSErrorContinue)block
           andUpdateBlock:(nullable PTCLActivityBlockVoidDAOActivityNSError)updateBlock
{
    if (self.nextActivityWorker)
    {
        [self.nextActivityWorker doLoadObjectForId:activityId
                                         withBlock:block
                                    andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doFavoriteObject:(nonnull DAOActivity*)activity
               withBlock:(nullable PTCLActivityBlockVoidNSError)block
{
    if (self.nextActivityWorker)
    {
        [self.nextActivityWorker doFavoriteObject:activity
                                        withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnfavoriteObject:(nonnull DAOActivity*)activity
                 withBlock:(nullable PTCLActivityBlockVoidNSError)block
{
    if (self.nextActivityWorker)
    {
        [self.nextActivityWorker doUnfavoriteObject:activity
                                          withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Single Item Relationship CRUD

- (void)doLoadItemForObject:(nullable DAOActivity*)activity
                  withBlock:(nullable PTCLActivityBlockVoidDAOItemNSErrorContinue)block
             andUpdateBlock:(nullable PTCLActivityBlockVoidDAOItemNSError)updateBlock
{
    if (self.nextActivityWorker)
    {
        [self.nextActivityWorker doLoadItemForObject:activity
                                           withBlock:block
                                      andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadLocationForObject:(nullable DAOActivity*)activity
                      withBlock:(nullable PTCLActivityBlockVoidDAOLocationNSErrorContinue)block
                 andUpdateBlock:(nullable PTCLActivityBlockVoidDAOLocationNSError)updateBlock
{
    if (self.nextActivityWorker)
    {
        [self.nextActivityWorker doLoadLocationForObject:activity
                                               withBlock:block
                                          andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadPhotoForObject:(nullable DAOActivity*)activity
                   withBlock:(nullable PTCLActivityBlockVoidDAOPhotoNSErrorContinue)block
              andUpdateBlock:(nullable PTCLActivityBlockVoidDAOPhotoNSError)updateBlock
{
    if (self.nextActivityWorker)
    {
        [self.nextActivityWorker doLoadPhotoForObject:activity
                                            withBlock:block
                                       andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadUserForObject:(nullable DAOActivity*)activity
                  withBlock:(nullable PTCLActivityBlockVoidDAOUserNSErrorContinue)block
             andUpdateBlock:(nullable PTCLActivityBlockVoidDAOUserNSError)updateBlock
{
    if (self.nextActivityWorker)
    {
        [self.nextActivityWorker doLoadUserForObject:activity
                                           withBlock:block
                                      andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadUserAvatarForObject:(nullable DAOActivity*)activity
                        withBlock:(nullable PTCLActivityBlockVoidDAOPhotoNSErrorContinue)block
                   andUpdateBlock:(nullable PTCLActivityBlockVoidDAOPhotoNSError)updateBlock
{
    if (self.nextActivityWorker)
    {
        [self.nextActivityWorker doLoadUserAvatarForObject:activity
                                                 withBlock:block
                                            andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Collection Items CRUD

- (void)doLoadObjectsWithParameters:(nullable NSDictionary*)parameters
                           andBlock:(nullable PTCLActivityBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
                     andUpdateBlock:(nullable PTCLActivityBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextActivityWorker)
    {
        [self.nextActivityWorker doLoadObjectsWithParameters:parameters
                                                    andBlock:block
                                              andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadObjectsForUser:(nonnull DAOUser*)user
              withParameters:(nullable NSDictionary*)parameters
                    andBlock:(nullable PTCLActivityBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLActivityBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextActivityWorker)
    {
        [self.nextActivityWorker doLoadObjectsForUser:user
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
