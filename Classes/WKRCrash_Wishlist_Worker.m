//
//  WKRCrash_Wishlist_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Wishlist_Worker.h"

@implementation WKRCrash_Wishlist_Worker

@synthesize nextBaseWorker;
@synthesize nextWishlistWorker;

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLWishlist_Protocol>)nextWishlistWorker
{
    id<PTCLWishlist_Protocol> worker    = [[self.class alloc] init];
    worker.nextWishlistWorker           = nextWishlistWorker;
    return worker;
}

- (void)configure
{
    
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextWishlistWorker)
    {
        [self.nextWishlistWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextWishlistWorker)
    {
        [self.nextWishlistWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)wishlistId
                withBlock:(nullable PTCLWishlistBlockVoidDAOWishlistNSErrorContinue)block
           andUpdateBlock:(nullable PTCLWishlistBlockVoidDAOWishlistNSError)updateBlock
{
    if (self.nextWishlistWorker)
    {
        [self.nextWishlistWorker doLoadObjectForId:wishlistId
                                         withBlock:block
                                    andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObject:(nonnull DAOWishlist*)wishlist
             withBlock:(nullable PTCLWishlistBlockVoidBOOLNSError)block
{
    if (self.nextWishlistWorker)
    {
        [self.nextWishlistWorker doDeleteObject:wishlist
                                      withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObjectForId:(nonnull NSString*)wishlistId
                  withBlock:(nullable PTCLWishlistBlockVoidBOOLNSError)block
{
    if (self.nextWishlistWorker)
    {
        [self.nextWishlistWorker doDeleteObjectForId:wishlistId
                                           withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObjectForItem:(nonnull DAOItem*)item
                    withBlock:(nullable PTCLWishlistBlockVoidBOOLNSError)block
{
    if (self.nextWishlistWorker)
    {
        [self.nextWishlistWorker doDeleteObjectForItem:item
                                             withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Single Item Relationship CRUD

- (void)doLoadItemForObject:(nonnull DAOWishlist*)wishlist
                  withBlock:(nullable PTCLWishlistBlockVoidDAOItemNSErrorContinue)block
             andUpdateBlock:(nullable PTCLWishlistBlockVoidDAOItemNSError)updateBlock
{
    if (self.nextWishlistWorker)
    {
        [self.nextWishlistWorker doLoadItemForObject:wishlist
                                           withBlock:block
                                      andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadUserForObject:(nonnull DAOWishlist*)wishlist
                  withBlock:(nullable PTCLWishlistBlockVoidDAOUserNSErrorContinue)block
             andUpdateBlock:(nullable PTCLWishlistBlockVoidDAOUserNSError)updateBlock
{
    if (self.nextWishlistWorker)
    {
        [self.nextWishlistWorker doLoadUserForObject:wishlist
                                           withBlock:block
                                      andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Collection Items CRUD

- (void)doLoadObjectsForUser:(nonnull DAOUser*)user
              withParameters:(nullable NSDictionary*)parameters
                    andBlock:(nullable PTCLWishlistBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLWishlistBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextWishlistWorker)
    {
        [self.nextWishlistWorker doLoadObjectsForUser:user
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
