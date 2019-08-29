//
//  WKRCrash_Rating_Worker.m
//  DoubleNode Crash Workers
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC.
//
//  WKRCore_Crash_Workers is released under the MIT license. See LICENSE for details.
//

#import "WKRCrash_Rating_Worker.h"

@interface WKRCrash_Rating_Worker ()

@end

@implementation WKRCrash_Rating_Worker

@synthesize nextBaseWorker;
@synthesize nextRatingWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLRating_Protocol>)nextRatingWorker
{
    return [[self.class alloc] initWithWorker:nextRatingWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextRatingWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLRating_Protocol>)nextRatingWorker_
{
    self = [super initWithWorker:nextRatingWorker_];
    if (self)
    {
        self.nextRatingWorker = nextRatingWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)ratingId
                withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLRatingBlockVoidDAORatingNSErrorContinue)block
           andUpdateBlock:(nullable PTCLRatingBlockVoidDAORatingNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadObjectForId:ratingId
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

- (void)doLoadObjectForReview:(nonnull DAOReview*)review
                    withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLRatingBlockVoidDAORatingNSErrorContinue)block
               andUpdateBlock:(nullable PTCLRatingBlockVoidDAORatingNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadObjectForReview:review
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

- (void)doDeleteObject:(nonnull DAORating*)rating
             withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLRatingBlockVoidBOOLNSError)block
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doDeleteObject:rating
                                    withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObjectForId:(nonnull NSString*)ratingId
                  withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLRatingBlockVoidBOOLNSError)block
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doDeleteObjectForId:ratingId
                                         withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObjectForItem:(nonnull DAOItem*)item
                    withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLRatingBlockVoidBOOLNSError)block
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doDeleteObjectForItem:item
                                           withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAORating*)rating
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLRatingBlockVoidDAORatingNSError)block
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doSaveObject:rating
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

- (void)doLoadItemForObject:(nonnull DAORating*)rating
                  withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLRatingBlockVoidDAOItemNSErrorContinue)block
             andUpdateBlock:(nullable PTCLRatingBlockVoidDAOItemNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadItemForObject:rating
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

- (void)doLoadLocationForObject:(nonnull DAORating*)rating
                      withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLRatingBlockVoidDAOLocationNSErrorContinue)block
                 andUpdateBlock:(nullable PTCLRatingBlockVoidDAOLocationNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadLocationForObject:rating
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

- (void)doLoadReviewForObject:(nonnull DAORating*)rating
                    withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLRatingBlockVoidDAOReviewNSErrorContinue)block
               andUpdateBlock:(nullable PTCLRatingBlockVoidDAOReviewNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadReviewForObject:rating
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

- (void)doLoadUserForObject:(nonnull DAORating*)rating
                  withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLRatingBlockVoidDAOUserNSErrorContinue)block
             andUpdateBlock:(nullable PTCLRatingBlockVoidDAOUserNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadUserForObject:rating
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

#pragma mark - Business Logic / Collection Items CRUD

- (void)doLoadObjectsForItem:(nonnull DAOItem*)item
              withParameters:(nullable NSDictionary*)parameters
                    andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLRatingBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLRatingBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadObjectsForItem:item
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

- (void)doLoadObjectsForLocation:(nonnull DAOLocation*)location
                  withParameters:(nullable NSDictionary*)parameters
                        andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLRatingBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
                  andUpdateBlock:(nullable PTCLRatingBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadObjectsForLocation:location
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

- (void)doLoadObjectsForReview:(nonnull DAOReview*)review
                withParameters:(nullable NSDictionary*)parameters
                      andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLRatingBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
                andUpdateBlock:(nullable PTCLRatingBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadObjectsForReview:review
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

- (void)doLoadObjectsForUser:(nonnull DAOUser*)user
              withParameters:(nullable NSDictionary*)parameters
                    andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLRatingBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLRatingBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadObjectsForUser:user
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
