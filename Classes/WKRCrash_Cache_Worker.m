//
//  WKRCrash_Cache_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Cache_Worker.h"

@interface WKRCrash_Cache_Worker ()

@end

@implementation WKRCrash_Cache_Worker

@synthesize nextBaseWorker;
@synthesize nextCacheWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLCache_Protocol>)nextCacheWorker
{
    return [[self.class alloc] initWithWorker:nextCacheWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextCacheWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLCache_Protocol>)nextCacheWorker_
{
    self = [super initWithWorker:nextCacheWorker_];
    if (self)
    {
        self.nextCacheWorker = nextCacheWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextCacheWorker)
    {
        [self.nextCacheWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextCacheWorker)
    {
        [self.nextCacheWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)cacheId
             withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCacheBlockVoidIDNSError)block
{
    if (self.nextCacheWorker)
    {
        [self.nextCacheWorker doLoadObjectForId:cacheId
                                      withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadImageForUrl:(nonnull NSURL*)url
             withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCacheBlockVoidIDNSError)block
{
    if (self.nextCacheWorker)
    {
        [self.nextCacheWorker doLoadImageForUrl:url
                                      withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObjectForId:(nonnull NSString*)cacheId
                  withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCacheBlockVoidNSError)block
{
    if (self.nextCacheWorker)
    {
        [self.nextCacheWorker doDeleteObjectForId:cacheId
                                        withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull id)object
               forId:(nonnull NSString*)cacheId
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCacheBlockVoidNSError)block
{
    if (self.nextCacheWorker)
    {
        [self.nextCacheWorker doSaveObject:object
                                     forId:cacheId
                                 withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
