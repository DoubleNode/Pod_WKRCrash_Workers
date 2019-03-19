//
//  WKRCrash_Order_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Order_Worker.h"

@interface WKRCrash_Order_Worker ()

@end

@implementation WKRCrash_Order_Worker

@synthesize nextBaseWorker;
@synthesize nextOrderWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLOrder_Protocol>)nextOrderWorker
{
    return [[self.class alloc] initWithWorker:nextOrderWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextOrderWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLOrder_Protocol>)nextOrderWorker_
{
    self = [super initWithWorker:nextOrderWorker_];
    if (self)
    {
        self.nextOrderWorker = nextOrderWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextOrderWorker)
    {
        [self.nextOrderWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextOrderWorker)
    {
        [self.nextOrderWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)orderId
                withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLOrderBlockVoidDAOOrderNSErrorContinue)block
           andUpdateBlock:(nullable PTCLOrderBlockVoidDAOOrderNSError)updateBlock
{
    if (self.nextOrderWorker)
    {
        [self.nextOrderWorker doLoadObjectForId:orderId
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

- (void)doDeleteObject:(nonnull DAOOrder*)order
             withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLOrderBlockVoidBOOLNSError)block
{
    if (self.nextOrderWorker)
    {
        [self.nextOrderWorker doDeleteObject:order
                                   withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOOrder*)order
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLOrderBlockVoidDAOOrderNSError)block
{
    if (self.nextOrderWorker)
    {
        [self.nextOrderWorker doSaveObject:order
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

- (void)doLoadLineitemsForObject:(nonnull DAOOrder*)order
                       withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLOrderBlockVoidNSArrayDAOLineitemNSUIntegerNSUIntegerNSErrorContinue)block
                  andUpdateBlock:(nullable PTCLOrderBlockVoidNSArrayDAOLineitemNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextOrderWorker)
    {
        [self.nextOrderWorker doLoadLineitemsForObject:order
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

- (void)doLoadTransactionsForObject:(nonnull DAOOrder*)order
                          withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLOrderBlockVoidNSArrayDAOTransactionNSUIntegerNSUIntegerNSErrorContinue)block
                     andUpdateBlock:(nullable PTCLOrderBlockVoidNSArrayDAOTransactionNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextOrderWorker)
    {
        [self.nextOrderWorker doLoadTransactionsForObject:order
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

- (void)doLoadObjectsForLocation:(nonnull DAOLocation*)location
                  withParameters:(nullable NSDictionary*)parameters
                        andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLOrderBlockVoidNSArrayDAOOrderNSUIntegerNSUIntegerNSErrorContinue)block
                  andUpdateBlock:(nullable PTCLOrderBlockVoidNSArrayDAOOrderNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextOrderWorker)
    {
        [self.nextOrderWorker doLoadObjectsForLocation:location
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
                 andBlock:(nullable PTCLOrderBlockVoidNSArrayDAOOrderNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLOrderBlockVoidNSArrayDAOOrderNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextOrderWorker)
    {
        [self.nextOrderWorker doLoadObjectsForUser:user
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
