//
//  WKRCrash_Rating_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Rating_Worker.h"

@implementation WKRCrash_Rating_Worker

@synthesize nextBaseWorker;
@synthesize nextRatingWorker;

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
                withBlock:(nullable PTCLRatingBlockVoidDAORatingNSErrorContinue)block
           andUpdateBlock:(nullable PTCLRatingBlockVoidDAORatingNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadObjectForId:ratingId
                                       withBlock:block
                                  andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadObjectForReview:(nonnull DAOReview*)review
                    withBlock:(nullable PTCLRatingBlockVoidDAORatingNSErrorContinue)block
               andUpdateBlock:(nullable PTCLRatingBlockVoidDAORatingNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadObjectForReview:review
                                           withBlock:block
                                      andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObject:(nonnull DAORating*)rating
             withBlock:(nullable PTCLRatingBlockVoidBOOLNSError)block
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doDeleteObject:rating
                                    withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObjectForId:(nonnull NSString*)ratingId
                  withBlock:(nullable PTCLRatingBlockVoidBOOLNSError)block
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doDeleteObjectForId:ratingId
                                         withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObjectForItem:(nonnull DAOItem*)item
                    withBlock:(nullable PTCLRatingBlockVoidBOOLNSError)block
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doDeleteObjectForItem:item
                                           withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAORating*)rating
           withBlock:(nullable PTCLRatingBlockVoidDAORatingNSError)block
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doSaveObject:rating
                                  withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Single Item Relationship CRUD

- (void)doLoadItemForObject:(nonnull DAORating*)rating
                  withBlock:(nullable PTCLRatingBlockVoidDAOItemNSErrorContinue)block
             andUpdateBlock:(nullable PTCLRatingBlockVoidDAOItemNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadItemForObject:rating
                                         withBlock:block
                                    andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadLocationForObject:(nonnull DAORating*)rating
                      withBlock:(nullable PTCLRatingBlockVoidDAOLocationNSErrorContinue)block
                 andUpdateBlock:(nullable PTCLRatingBlockVoidDAOLocationNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadLocationForObject:rating
                                             withBlock:block
                                        andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadReviewForObject:(nonnull DAORating*)rating
                    withBlock:(nullable PTCLRatingBlockVoidDAOReviewNSErrorContinue)block
               andUpdateBlock:(nullable PTCLRatingBlockVoidDAOReviewNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadReviewForObject:rating
                                           withBlock:block
                                      andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadUserForObject:(nonnull DAORating*)rating
                  withBlock:(nullable PTCLRatingBlockVoidDAOUserNSErrorContinue)block
             andUpdateBlock:(nullable PTCLRatingBlockVoidDAOUserNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadUserForObject:rating
                                         withBlock:block
                                    andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Collection Items CRUD

- (void)doLoadObjectsForItem:(nonnull DAOItem*)item
              withParameters:(nullable NSDictionary*)parameters
                    andBlock:(nullable PTCLRatingBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLRatingBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadObjectsForItem:item
                                     withParameters:parameters
                                           andBlock:block
                                     andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadObjectsForLocation:(nonnull DAOLocation*)location
                  withParameters:(nullable NSDictionary*)parameters
                        andBlock:(nullable PTCLRatingBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
                  andUpdateBlock:(nullable PTCLRatingBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadObjectsForLocation:location
                                         withParameters:parameters
                                               andBlock:block
                                         andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadObjectsForReview:(nonnull DAOReview*)review
                withParameters:(nullable NSDictionary*)parameters
                      andBlock:(nullable PTCLRatingBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
                andUpdateBlock:(nullable PTCLRatingBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadObjectsForReview:review
                                       withParameters:parameters
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
                    andBlock:(nullable PTCLRatingBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLRatingBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextRatingWorker)
    {
        [self.nextRatingWorker doLoadObjectsForUser:user
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
