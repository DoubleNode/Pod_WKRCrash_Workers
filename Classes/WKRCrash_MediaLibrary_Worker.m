//
//  WKRCrash_File_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import <Photos/PHImageManager.h>

#import "WKRCrash_MediaLibrary_Worker.h"

@interface WKRCrash_MediaLibrary_Worker ()

@end

@implementation WKRCrash_MediaLibrary_Worker

@synthesize nextBaseWorker;
@synthesize nextMediaLibraryWorker;

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLMediaLibrary_Protocol>)nextMediaLibraryWorker
{
    return [[self.class alloc] initWithWorker:nextMediaLibraryWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextMediaLibraryWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLMediaLibrary_Protocol>)nextMediaLibraryWorker_
{
    self = [super initWithWorker:nextMediaLibraryWorker_];
    if (self)
    {
        self.nextMediaLibraryWorker = nextMediaLibraryWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic

+ (CGSize)PTCLMediaLibraryMaximumSize
{
    return PHImageManagerMaximumSize;
}

- (BOOL)doCheckAuthorization
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doCheckAuthorization];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doRequestAuthorizationWithCompletionBlock:(nullable PTCLMediaLibraryBlockVoidNSError)completionBlock
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doRequestAuthorizationWithCompletionBlock:completionBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadCollectionsWithCompletionBlock:(nullable PTCLMediaLibraryBlockVoidNSArrayNSError)completionBlock
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doLoadCollectionsWithCompletionBlock:completionBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadImagesWithCompletionBlock:(nullable PTCLMediaLibraryBlockVoidNSArrayNSError)completionBlock
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doLoadImagesWithCompletionBlock:completionBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadImage:(nonnull id)asset
               size:(CGSize)size
    completionBlock:(nullable PTCLMediaLibraryBlockVoidUIImageNSDictionary)completionBlock
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doLoadImage:asset
                                            size:size
                                 completionBlock:completionBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
