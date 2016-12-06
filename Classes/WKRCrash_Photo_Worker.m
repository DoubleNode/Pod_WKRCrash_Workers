//
//  WKRCrash_Photo_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Photo_Worker.h"

@interface WKRCrash_Photo_Worker ()

@end

@implementation WKRCrash_Photo_Worker

@synthesize nextBaseWorker;
@synthesize nextPhotoWorker;

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLPhoto_Protocol>)nextPhotoWorker
{
    id<PTCLPhoto_Protocol> worker   = [[self.class alloc] init];
    worker.nextPhotoWorker          = nextPhotoWorker;
    return worker;
}

- (void)configure
{
    
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextPhotoWorker)
    {
        [self.nextPhotoWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextPhotoWorker)
    {
        [self.nextPhotoWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)photoId
                withBlock:(nullable PTCLPhotoBlockVoidDAOPhotoNSErrorContinue)block
           andUpdateBlock:(nullable PTCLPhotoBlockVoidDAOPhotoNSError)updateBlock
{
    if (self.nextPhotoWorker)
    {
        [self.nextPhotoWorker doLoadObjectForId:photoId
                                      withBlock:block
                                 andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObject:(nonnull DAOPhoto*)photo
             withBlock:(nullable PTCLPhotoBlockVoidBOOLNSError)block
{
    if (self.nextPhotoWorker)
    {
        [self.nextPhotoWorker doDeleteObject:photo
                                   withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObjectForId:(nonnull NSString*)photoId
                  withBlock:(nullable PTCLPhotoBlockVoidBOOLNSError)block
{
    if (self.nextPhotoWorker)
    {
        [self.nextPhotoWorker doDeleteObjectForId:photoId
                                        withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOPhoto*)photo
           withBlock:(nullable PTCLPhotoBlockVoidDAOPhotoNSError)block
{
    if (self.nextPhotoWorker)
    {
        [self.nextPhotoWorker doSaveObject:photo
                                 withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doFavoriteObject:(nonnull DAOPhoto*)photo
               withBlock:(nullable PTCLPhotoBlockVoidNSError)block
{
    if (self.nextPhotoWorker)
    {
        [self.nextPhotoWorker doFavoriteObject:photo
                                     withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnfavoriteObject:(nonnull DAOPhoto*)photo
                 withBlock:(nullable PTCLPhotoBlockVoidNSError)block
{
    if (self.nextPhotoWorker)
    {
        [self.nextPhotoWorker doUnfavoriteObject:photo
                                       withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Single Item Relationship CRUD

- (void)doLoadItemForObject:(nonnull DAOPhoto*)photo
                  withBlock:(nullable PTCLPhotoBlockVoidDAOItemNSErrorContinue)block
             andUpdateBlock:(nullable PTCLPhotoBlockVoidDAOItemNSError)updateBlock
{
    if (self.nextPhotoWorker)
    {
        [self.nextPhotoWorker doLoadItemForObject:photo
                                        withBlock:block
                                   andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadLocationForObject:(nonnull DAOPhoto*)photo
                      withBlock:(nullable PTCLPhotoBlockVoidDAOLocationNSErrorContinue)block
                 andUpdateBlock:(nullable PTCLPhotoBlockVoidDAOLocationNSError)updateBlock
{
    if (self.nextPhotoWorker)
    {
        [self.nextPhotoWorker doLoadLocationForObject:photo
                                            withBlock:block
                                       andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadReviewForObject:(nonnull DAOPhoto*)photo
                    withBlock:(nullable PTCLPhotoBlockVoidDAOReviewNSErrorContinue)block
               andUpdateBlock:(nullable PTCLPhotoBlockVoidDAOReviewNSError)updateBlock
{
    if (self.nextPhotoWorker)
    {
        [self.nextPhotoWorker doLoadReviewForObject:photo
                                          withBlock:block
                                     andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadUserForObject:(nonnull DAOPhoto*)photo
                  withBlock:(nullable PTCLPhotoBlockVoidDAOUserNSErrorContinue)block
             andUpdateBlock:(nullable PTCLPhotoBlockVoidDAOUserNSError)updateBlock
{
    if (self.nextPhotoWorker)
    {
        [self.nextPhotoWorker doLoadUserForObject:photo
                                        withBlock:block
                                   andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
