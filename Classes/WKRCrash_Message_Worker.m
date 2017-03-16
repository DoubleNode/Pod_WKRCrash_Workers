//
//  WKRCrash_Message_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Message_Worker.h"

@implementation WKRCrash_Message_Worker

@synthesize nextBaseWorker;
@synthesize nextMessageWorker;

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLMessage_Protocol>)nextMessageWorker
{
    return [[self.class alloc] initWithWorker:nextMessageWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextMessageWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLMessage_Protocol>)nextMessageWorker_
{
    self = [super initWithWorker:nextMessageWorker_];
    if (self)
    {
        self.nextMessageWorker = nextMessageWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextMessageWorker)
    {
        [self.nextMessageWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextMessageWorker)
    {
        [self.nextMessageWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doSaveObject:(nonnull DAOMessage*)message
           withBlock:(nullable PTCLMessageBlockVoidDAOMessageNSError)block
{
    if (self.nextMessageWorker)
    {
        [self.nextMessageWorker doSaveObject:message
                                   withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

/*
- (void)doFlagObject:(nonnull DAOMessage*)message
          withAction:(nonnull NSString*)action
             andText:(nonnull NSString*)text
            andBlock:(nullable PTCLMessageBlockVoidNSError)block
{
    if (self.nextMessageWorker)
    {
        [self.nextMessageWorker doFlagObject:message
                                  withAction:action
                                     andText:text
                                    andBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnflagObject:(nonnull DAOMessage*)message
            withAction:(nonnull NSString*)action
               andText:(nonnull NSString*)text
              andBlock:(nullable PTCLMessageBlockVoidNSError)block
{
    if (self.nextMessageWorker)
    {
        [self.nextMessageWorker doUnflagObject:message
                                    withAction:action
                                       andText:text
                                      andBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doCheckFlagObject:(nonnull DAOLocation*)location
               withAction:(nonnull NSString*)action
                 andBlock:(nullable PTCLLocationBlockVoidNSUIntegerNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doCheckFlagObject:location
                                        withAction:action
                                          andBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Collection Items CRUD

- (void)doLoadFlagsForObject:(nonnull DAOLocation*)location
                  withAction:(nonnull NSString*)action
                    andBlock:(nullable PTCLLocationBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLLocationBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doLoadFlagsForObject:item
                                       withAction:action
                                         andBlock:block
                                   andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}
 */

@end
