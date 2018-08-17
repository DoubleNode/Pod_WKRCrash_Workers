//
//  WKRCrash_Lineitem_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Lineitem_Worker.h"

@interface WKRCrash_Lineitem_Worker ()

@end

@implementation WKRCrash_Lineitem_Worker

@synthesize nextBaseWorker;
@synthesize nextLineitemWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLLineitem_Protocol>)nextLineitemWorker
{
    return [[self.class alloc] initWithWorker:nextLineitemWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextLineitemWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLLineitem_Protocol>)nextLineitemWorker_
{
    self = [super initWithWorker:nextLineitemWorker_];
    if (self)
    {
        self.nextLineitemWorker = nextLineitemWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextLineitemWorker)
    {
        [self.nextLineitemWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextLineitemWorker)
    {
        [self.nextLineitemWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForOrderId:(nonnull NSString*)orderId
                         andId:(nonnull NSString*)lineitemId
                     withBlock:(nullable PTCLLineitemBlockVoidDAOLineitemNSErrorContinue)block
                andUpdateBlock:(nullable PTCLLineitemBlockVoidDAOLineitemNSError)updateBlock
{
    if (self.nextLineitemWorker)
    {
        [self.nextLineitemWorker doLoadObjectForOrderId:orderId
                                                  andId:lineitemId
                                              withBlock:block
                                         andUpdateBlock:updateBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObject:(nonnull DAOLineitem*)lineitem
             withBlock:(nullable PTCLLineitemBlockVoidBOOLNSError)block
{
    if (self.nextLineitemWorker)
    {
        [self.nextLineitemWorker doDeleteObject:lineitem
                                      withBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOLineitem*)lineitem
           withBlock:(nullable PTCLLineitemBlockVoidDAOLineitemNSError)block
{
    if (self.nextLineitemWorker)
    {
        [self.nextLineitemWorker doSaveObject:lineitem
                                    withBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
