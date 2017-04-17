//
//  WKRCrash_Transaction_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Transaction_Worker.h"

@class DAOUser;

@implementation WKRCrash_Transaction_Worker

@synthesize nextBaseWorker;
@synthesize nextTransactionWorker;

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLTransaction_Protocol>)nextTransactionWorker
{
    return [[self.class alloc] initWithWorker:nextTransactionWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextTransactionWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLTransaction_Protocol>)nextTransactionWorker_
{
    self = [super initWithWorker:nextTransactionWorker_];
    if (self)
    {
        self.nextTransactionWorker = nextTransactionWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextTransactionWorker)
    {
        [self.nextTransactionWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextTransactionWorker)
    {
        [self.nextTransactionWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)transactionId
                withBlock:(nullable PTCLTransactionBlockVoidDAOTransactionNSErrorContinue)block
           andUpdateBlock:(nullable PTCLTransactionBlockVoidDAOTransactionNSError)updateBlock
{
    if (self.nextTransactionWorker)
    {
        [self.nextTransactionWorker doLoadObjectForId:transactionId
                                            withBlock:block
                                       andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObject:(nonnull DAOTransaction*)transaction
             withBlock:(nullable PTCLTransactionBlockVoidBOOLNSError)block
{
    if (self.nextTransactionWorker)
    {
        [self.nextTransactionWorker doDeleteObject:transaction
                                         withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOTransaction*)transaction
           withBlock:(nullable PTCLTransactionBlockVoidDAOTransactionNSError)block
{
    if (self.nextTransactionWorker)
    {
        [self.nextTransactionWorker doSaveObject:transaction
                                       withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
