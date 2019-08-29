//
//  WKRCrash_News_Worker.m
//  DoubleNode Crash Workers
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC.
//
//  WKRCore_Crash_Workers is released under the MIT license. See LICENSE for details.
//

#import "WKRCrash_News_Worker.h"

@interface WKRCrash_News_Worker ()

@end

@implementation WKRCrash_News_Worker

@synthesize nextBaseWorker;
@synthesize nextNewsWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLNews_Protocol>)nextNewsWorker
{
    return [[self.class alloc] initWithWorker:nextNewsWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextNewsWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLNews_Protocol>)nextNewsWorker_
{
    self = [super initWithWorker:nextNewsWorker_];
    if (self)
    {
        self.nextNewsWorker = nextNewsWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextNewsWorker)
    {
        [self.nextNewsWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextNewsWorker)
    {
        [self.nextNewsWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)newsId
                withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLNewsBlockVoidDAONewsNSErrorContinue)block
           andUpdateBlock:(nullable PTCLNewsBlockVoidDAONewsNSError)updateBlock
{
    if (self.nextNewsWorker)
    {
        [self.nextNewsWorker doLoadObjectForId:newsId
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

- (void)doFavoriteObject:(nonnull DAONews*)news
               withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLNewsBlockVoidNSError)block
{
    if (self.nextNewsWorker)
    {
        [self.nextNewsWorker doFavoriteObject:news
                                    withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnfavoriteObject:(nonnull DAONews*)news
                 withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLNewsBlockVoidNSError)block
{
    if (self.nextNewsWorker)
    {
        [self.nextNewsWorker doUnfavoriteObject:news
                                      withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doFlagObject:(nonnull DAONews*)news
          withAction:(nonnull NSString*)action
             andText:(nonnull NSString*)text
            andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLNewsBlockVoidNSError)block
{
    if (self.nextNewsWorker)
    {
        [self.nextNewsWorker doFlagObject:news
                               withAction:action
                                  andText:text
                                 andProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnflagObject:(nonnull DAONews*)news
            withAction:(nonnull NSString*)action
               andText:(nonnull NSString*)text
              andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLNewsBlockVoidNSError)block
{
    if (self.nextNewsWorker)
    {
        [self.nextNewsWorker doUnflagObject:news
                                 withAction:action
                                    andText:text
                                   andProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doCheckFlagObject:(nonnull DAONews*)news
               withAction:(nonnull NSString*)action
                 andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLNewsBlockVoidNSUIntegerNSError)block
{
    if (self.nextNewsWorker)
    {
        [self.nextNewsWorker doCheckFlagObject:news
                                    withAction:action
                                      andProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Collection Items CRUD

- (void)doLoadFlagsForObject:(nonnull DAONews*)news
                 withActions:(nonnull NSArray<NSString*>*)actions
                    andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLNewsBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLNewsBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextNewsWorker)
    {
        [self.nextNewsWorker doLoadFlagsForObject:news
                                      withActions:actions
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

- (void)doLoadMyFlagsForObject:(nonnull DAONews*)news
                   withActions:(nonnull NSArray<NSString*>*)actions
                      andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLNewsBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSErrorContinue)block
                andUpdateBlock:(nullable PTCLNewsBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextNewsWorker)
    {
        [self.nextNewsWorker doLoadMyFlagsForObject:news
                                        withActions:actions
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
