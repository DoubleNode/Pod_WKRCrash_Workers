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

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLPhoto_Protocol>)nextPhotoWorker
{
    return [[self.class alloc] initWithWorker:nextPhotoWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextPhotoWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLPhoto_Protocol>)nextPhotoWorker_
{
    self = [super initWithWorker:nextPhotoWorker_];
    if (self)
    {
        self.nextPhotoWorker = nextPhotoWorker_;
    }
    
    return self;
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
        return;
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
        return;
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
        return;
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
        return;
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
        return;
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
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doFlagObject:(nonnull DAOPhoto*)photo
          withAction:(nonnull NSString*)action
             andText:(nonnull NSString*)text
            andBlock:(nullable PTCLPhotoBlockVoidNSError)block
{
    if (self.nextPhotoWorker)
    {
        [self.nextPhotoWorker doFlagObject:photo
                                withAction:action
                                   andText:text
                                  andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnflagObject:(nonnull DAOPhoto*)photo
            withAction:(nonnull NSString*)action
               andText:(nonnull NSString*)text
              andBlock:(nullable PTCLPhotoBlockVoidNSError)block
{
    if (self.nextPhotoWorker)
    {
        [self.nextPhotoWorker doUnflagObject:photo
                                  withAction:action
                                     andText:text
                                    andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doCheckFlagObject:(nonnull DAOPhoto*)photo
               withAction:(nonnull NSString*)action
                 andBlock:(nullable PTCLPhotoBlockVoidNSUIntegerNSError)block
{
    if (self.nextPhotoWorker)
    {
        [self.nextPhotoWorker doCheckFlagObject:photo
                                     withAction:action
                                       andBlock:block];
        return;
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
        return;
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
        return;
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
        return;
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
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Collection Items CRUD

- (void)doLoadFlagsForObject:(nonnull DAOPhoto*)photo
                 withActions:(nonnull NSArray<NSString*>*)actions
                    andBlock:(nullable PTCLPhotoBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLPhotoBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextPhotoWorker)
    {
        [self.nextPhotoWorker doLoadFlagsForObject:photo
                                       withActions:actions
                                          andBlock:block
                                    andUpdateBlock:updateBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadMyFlagsForObject:(nonnull DAOPhoto*)photo
                   withActions:(nonnull NSArray<NSString*>*)actions
                      andBlock:(nullable PTCLPhotoBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSErrorContinue)block
                andUpdateBlock:(nullable PTCLPhotoBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextPhotoWorker)
    {
        [self.nextPhotoWorker doLoadMyFlagsForObject:photo
                                         withActions:actions
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
