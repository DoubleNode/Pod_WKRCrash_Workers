//
//  WKRCrash_PaymentAccount_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_PaymentAccount_Worker.h"

@interface WKRCrash_PaymentAccount_Worker ()

@end

@implementation WKRCrash_PaymentAccount_Worker

@synthesize nextBaseWorker;
@synthesize nextPaymentAccountWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLPaymentAccount_Protocol>)nextPaymentAccountWorker
{
    return [[self.class alloc] initWithWorker:nextPaymentAccountWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextPaymentAccountWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLPaymentAccount_Protocol>)nextPaymentAccountWorker_
{
    self = [super initWithWorker:nextPaymentAccountWorker_];
    if (self)
    {
        self.nextPaymentAccountWorker = nextPaymentAccountWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextPaymentAccountWorker)
    {
        [self.nextPaymentAccountWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextPaymentAccountWorker)
    {
        [self.nextPaymentAccountWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)paymentAccountId
                withBlock:(nullable PTCLPaymentAccountBlockVoidDAOPaymentAccountNSErrorContinue)block
           andUpdateBlock:(nullable PTCLPaymentAccountBlockVoidDAOPaymentAccountNSError)updateBlock
{
    if (self.nextPaymentAccountWorker)
    {
        [self.nextPaymentAccountWorker doLoadObjectForId:paymentAccountId
                                               withBlock:block
                                          andUpdateBlock:updateBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObject:(nonnull DAOPaymentAccount*)paymentAccount
             withBlock:(nullable PTCLPaymentAccountBlockVoidBOOLNSError)block
{
    if (self.nextPaymentAccountWorker)
    {
        [self.nextPaymentAccountWorker doDeleteObject:paymentAccount
                                            withBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOPaymentAccount*)paymentAccount
           withBlock:(nullable PTCLPaymentAccountBlockVoidDAOPaymentAccountNSError)block
{
    if (self.nextPaymentAccountWorker)
    {
        [self.nextPaymentAccountWorker doSaveObject:paymentAccount
                                          withBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doVerifyObject:(nonnull DAOPaymentAccount*)paymentAccount
          withDeposit1:(NSUInteger)deposit1
           andDeposit2:(NSUInteger)deposit2
              andBlock:(nullable PTCLPaymentAccountBlockVoidBOOLNSError)block
{
    if (self.nextPaymentAccountWorker)
    {
        [self.nextPaymentAccountWorker doVerifyObject:paymentAccount
                                         withDeposit1:deposit1
                                          andDeposit2:deposit2
                                             andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Collection Items CRUD

- (void)doLoadContactForObject:(nonnull DAOPaymentAccount*)paymentAccount
                     withBlock:(nullable PTCLPaymentAccountBlockVoidDAOContactNSErrorContinue)block
                andUpdateBlock:(nullable PTCLPaymentAccountBlockVoidDAOContactNSError)updateBlock
{
    if (self.nextPaymentAccountWorker)
    {
        [self.nextPaymentAccountWorker doLoadContactForObject:paymentAccount
                                                    withBlock:block
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
                    andBlock:(nullable PTCLPaymentAccountBlockVoidNSArrayDAOPaymentAccountNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLPaymentAccountBlockVoidNSArrayDAOPaymentAccountNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextPaymentAccountWorker)
    {
        [self.nextPaymentAccountWorker doLoadObjectsForUser:user
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
