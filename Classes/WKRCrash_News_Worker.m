//
//  WKRCrash_News_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_News_Worker.h"

@implementation WKRCrash_News_Worker

@synthesize nextBaseWorker;
@synthesize nextNewsWorker;

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
                withBlock:(nullable PTCLNewsBlockVoidDAONewsNSErrorContinue)block
           andUpdateBlock:(nullable PTCLNewsBlockVoidDAONewsNSError)updateBlock
{
    if (self.nextNewsWorker)
    {
        [self.nextNewsWorker doLoadObjectForId:newsId
                                     withBlock:block
                                andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doFavoriteObject:(nonnull DAONews*)news
               withBlock:(nullable PTCLNewsBlockVoidNSError)block
{
    if (self.nextNewsWorker)
    {
        [self.nextNewsWorker doFavoriteObject:news
                                    withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnfavoriteObject:(nonnull DAONews*)news
                 withBlock:(nullable PTCLNewsBlockVoidNSError)block
{
    if (self.nextNewsWorker)
    {
        [self.nextNewsWorker doUnfavoriteObject:news
                                      withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
