//
//  WKRCrash_Review_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Review_Worker.h"

@interface WKRCrash_Review_Worker ()

@end

@implementation WKRCrash_Review_Worker

@synthesize nextBaseWorker;
@synthesize nextReviewWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLReview_Protocol>)nextReviewWorker
{
    return [[self.class alloc] initWithWorker:nextReviewWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextReviewWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLReview_Protocol>)nextReviewWorker_
{
    self = [super initWithWorker:nextReviewWorker_];
    if (self)
    {
        self.nextReviewWorker = nextReviewWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextReviewWorker)
    {
        [self.nextReviewWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextReviewWorker)
    {
        [self.nextReviewWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)reviewId
                withBlock:(nullable PTCLReviewBlockVoidDAOReviewNSErrorContinue)block
           andUpdateBlock:(nullable PTCLReviewBlockVoidDAOReviewNSError)updateBlock
{
    if (self.nextReviewWorker)
    {
        [self.nextReviewWorker doLoadObjectForId:reviewId
                                       withBlock:block
                                  andUpdateBlock:updateBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObject:(nonnull DAOReview*)review
             withBlock:(nullable PTCLReviewBlockVoidBOOLNSError)block
{
    if (self.nextReviewWorker)
    {
        [self.nextReviewWorker doDeleteObject:review
                                    withBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObjectForId:(nonnull NSString*)reviewId
                  withBlock:(nullable PTCLReviewBlockVoidBOOLNSError)block
{
    if (self.nextReviewWorker)
    {
        [self.nextReviewWorker doDeleteObjectForId:reviewId
                                         withBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOReview*)review
           withBlock:(nullable PTCLReviewBlockVoidDAOReviewNSError)block
{
    if (self.nextReviewWorker)
    {
        [self.nextReviewWorker doSaveObject:review
                                  withBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Single Item Relationship CRUD

- (void)doLoadCreatorForObject:(nonnull DAOReview*)review
                     withBlock:(nullable PTCLReviewBlockVoidDAOUserNSErrorContinue)block
                andUpdateBlock:(nullable PTCLReviewBlockVoidDAOUserNSError)updateBlock
{
    if (self.nextReviewWorker)
    {
        [self.nextReviewWorker doLoadCreatorForObject:review
                                            withBlock:block
                                       andUpdateBlock:updateBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadItemForObject:(nonnull DAOReview*)review
                  withBlock:(nullable PTCLReviewBlockVoidDAOItemNSErrorContinue)block
             andUpdateBlock:(nullable PTCLReviewBlockVoidDAOItemNSError)updateBlock
{
    if (self.nextReviewWorker)
    {
        [self.nextReviewWorker doLoadItemForObject:review
                                         withBlock:block
                                    andUpdateBlock:updateBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadLocationForObject:(nonnull DAOReview*)review
                      withBlock:(nullable PTCLReviewBlockVoidDAOLocationNSErrorContinue)block
                 andUpdateBlock:(nullable PTCLReviewBlockVoidDAOLocationNSError)updateBlock
{
    if (self.nextReviewWorker)
    {
        [self.nextReviewWorker doLoadLocationForObject:review
                                             withBlock:block
                                        andUpdateBlock:updateBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadPhotoForObject:(nonnull DAOReview*)review
                   withBlock:(nullable PTCLReviewBlockVoidDAOPhotoNSErrorContinue)block
              andUpdateBlock:(nullable PTCLReviewBlockVoidDAOPhotoNSError)updateBlock
{
    if (self.nextReviewWorker)
    {
        [self.nextReviewWorker doLoadPhotoForObject:review
                                          withBlock:block
                                     andUpdateBlock:updateBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadUserForObject:(nonnull DAOReview*)review
                  withBlock:(nullable PTCLReviewBlockVoidDAOUserNSErrorContinue)block
             andUpdateBlock:(nullable PTCLReviewBlockVoidDAOUserNSError)updateBlock
{
    if (self.nextReviewWorker)
    {
        [self.nextReviewWorker doLoadUserForObject:review
                                         withBlock:block
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
                    andBlock:(nullable PTCLReviewBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLReviewBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextReviewWorker)
    {
        [self.nextReviewWorker doLoadObjectsForItem:item
                                     withParameters:parameters
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
                        andBlock:(nullable PTCLReviewBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
                  andUpdateBlock:(nullable PTCLReviewBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextReviewWorker)
    {
        [self.nextReviewWorker doLoadObjectsForLocation:location
                                         withParameters:parameters
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
                    andBlock:(nullable PTCLReviewBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLReviewBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextReviewWorker)
    {
        [self.nextReviewWorker doLoadObjectsForUser:user
                                     withParameters:parameters
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
