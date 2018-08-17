//
//  WKRCrash_Favorite_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Favorite_Worker.h"

@interface WKRCrash_Favorite_Worker ()

@end

@implementation WKRCrash_Favorite_Worker

@synthesize nextBaseWorker;
@synthesize nextFavoriteWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLFavorite_Protocol>)nextFavoriteWorker
{
    return [[self.class alloc] initWithWorker:nextFavoriteWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextFavoriteWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLFavorite_Protocol>)nextFavoriteWorker_
{
    self = [super initWithWorker:nextFavoriteWorker_];
    if (self)
    {
        self.nextFavoriteWorker = nextFavoriteWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextFavoriteWorker)
    {
        [self.nextFavoriteWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextFavoriteWorker)
    {
        [self.nextFavoriteWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)favoriteId
                withBlock:(nullable PTCLFavoriteBlockVoidDAOFavoriteNSErrorContinue)block
           andUpdateBlock:(nullable PTCLFavoriteBlockVoidDAOFavoriteNSError)updateBlock
{
    if (self.nextFavoriteWorker)
    {
        [self.nextFavoriteWorker doLoadObjectForId:favoriteId
                                         withBlock:block
                                    andUpdateBlock:updateBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObject:(nonnull DAOFavorite*)favorite
             withBlock:(nullable PTCLFavoriteBlockVoidBOOLNSError)block
{
    if (self.nextFavoriteWorker)
    {
        [self.nextFavoriteWorker doDeleteObject:favorite
                                      withBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObjectForId:(nonnull NSString*)favoriteId
                  withBlock:(nullable PTCLFavoriteBlockVoidBOOLNSError)block
{
    if (self.nextFavoriteWorker)
    {
        [self.nextFavoriteWorker doDeleteObjectForId:favoriteId
                                           withBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObjectForItem:(nonnull DAOItem*)item
                    withBlock:(nullable PTCLFavoriteBlockVoidBOOLNSError)block
{
    if (self.nextFavoriteWorker)
    {
        [self.nextFavoriteWorker doDeleteObjectForItem:item
                                             withBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Single Item Relationship CRUD

- (void)doLoadItemForObject:(nonnull DAOFavorite*)favorite
                  withBlock:(nullable PTCLFavoriteBlockVoidDAOItemNSErrorContinue)block
             andUpdateBlock:(nullable PTCLFavoriteBlockVoidDAOItemNSError)updateBlock
{
    if (self.nextFavoriteWorker)
    {
        [self.nextFavoriteWorker doLoadItemForObject:favorite
                                           withBlock:block
                                      andUpdateBlock:updateBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadUserForObject:(nonnull DAOFavorite*)favorite
                  withBlock:(nullable PTCLFavoriteBlockVoidDAOUserNSErrorContinue)block
             andUpdateBlock:(nullable PTCLFavoriteBlockVoidDAOUserNSError)updateBlock
{
    if (self.nextFavoriteWorker)
    {
        [self.nextFavoriteWorker doLoadUserForObject:favorite
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

- (void)doLoadObjectsForUser:(nonnull DAOUser*)user
              withParameters:(nullable NSDictionary*)parameters
                    andBlock:(nullable PTCLFavoriteBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLFavoriteBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextFavoriteWorker)
    {
        [self.nextFavoriteWorker doLoadObjectsForUser:user
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
