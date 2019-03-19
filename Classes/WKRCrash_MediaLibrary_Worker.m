//
//  WKRCrash_File_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

@import Photos;

#import "WKRCrash_MediaLibrary_Worker.h"

@interface WKRCrash_MediaLibrary_Worker ()

@end

@implementation WKRCrash_MediaLibrary_Worker

@synthesize nextBaseWorker;
@synthesize nextMediaLibraryWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

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

#pragma mark - Business Logic / Single Item CRUD

- (BOOL)doCheckAuthorization
{
    if (self.nextMediaLibraryWorker)
    {
        return [self.nextMediaLibraryWorker doCheckAuthorization];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doRequestAuthorizationWithProgress:(nullable PTCLProgressBlock)progressBlock
                                  andBlock:(nullable PTCLMediaLibraryBlockVoidNSError)block
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doRequestAuthorizationWithProgress:progressBlock
                                                               andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Single Item Relationship CRUD

- (void)doLoadAudio:(nonnull id)asset
               withSize:(CGSize)size
        andProgress:(nullable PTCLProgressBlock)progressBlock
           andBlock:(nullable PTCLMediaLibraryBlockVoidNSURLNSDictionary)block
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doLoadAudio:asset
                                            withSize:size
                                     andProgress:progressBlock
                                        andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadImage:(nonnull id)asset
               withSize:(CGSize)size
        andProgress:(nullable PTCLProgressBlock)progressBlock
           andBlock:(nullable PTCLMediaLibraryBlockVoidUIImageNSDictionary)block
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doLoadImage:asset
                                            withSize:size
                                     andProgress:progressBlock
                                        andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadVideo:(nonnull id)asset
               withSize:(CGSize)size
        andProgress:(nullable PTCLProgressBlock)progressBlock
           andBlock:(nullable PTCLMediaLibraryBlockVoidNSURLNSDictionary)block
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doLoadVideo:asset
                                            withSize:size
                                     andProgress:progressBlock
                                        andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveImage:(UIImage* _Nullable)image
       withProgress:(nullable PTCLProgressBlock)progressBlock
           andBlock:(nullable PTCLMediaLibraryBlockVoidBOOLNSError)block
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doSaveImage:image
                                    withProgress:progressBlock
                                        andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveImage:(UIImage* _Nullable)image
       toCollection:(nonnull id)assetCollection
       withProgress:(nullable PTCLProgressBlock)progressBlock
           andBlock:(nullable PTCLMediaLibraryBlockVoidBOOLNSError)block
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doSaveImage:image
                                    toCollection:assetCollection
                                    withProgress:progressBlock
                                        andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveAudioFromUrl:(NSURL* _Nullable)videoUrl
              withProgress:(nullable PTCLProgressBlock)progressBlock
                  andBlock:(nullable PTCLMediaLibraryBlockVoidBOOLNSError)block
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doSaveAudioFromUrl:videoUrl
                                           withProgress:progressBlock
                                               andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveAudioFromUrl:(NSURL* _Nullable)videoUrl
              toCollection:(nonnull id)assetCollection
              withProgress:(nullable PTCLProgressBlock)progressBlock
                  andBlock:(nullable PTCLMediaLibraryBlockVoidBOOLNSError)block
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doSaveAudioFromUrl:videoUrl
                                           toCollection:assetCollection
                                           withProgress:progressBlock
                                               andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;}

- (void)doSaveImageFromUrl:(NSURL* _Nullable)imageUrl
              withProgress:(nullable PTCLProgressBlock)progressBlock
                  andBlock:(nullable PTCLMediaLibraryBlockVoidBOOLNSError)block
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doSaveImageFromUrl:imageUrl
                                           withProgress:progressBlock
                                               andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveImageFromUrl:(NSURL* _Nullable)imageUrl
              toCollection:(nonnull id)assetCollection
              withProgress:(nullable PTCLProgressBlock)progressBlock
                  andBlock:(nullable PTCLMediaLibraryBlockVoidBOOLNSError)block
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doSaveImageFromUrl:imageUrl
                                           toCollection:assetCollection
                                           withProgress:progressBlock
                                               andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveVideoFromUrl:(NSURL* _Nullable)videoUrl
              withProgress:(nullable PTCLProgressBlock)progressBlock
                  andBlock:(nullable PTCLMediaLibraryBlockVoidBOOLNSError)block
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doSaveVideoFromUrl:videoUrl
                                           withProgress:progressBlock
                                               andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveVideoFromUrl:(NSURL* _Nullable)videoUrl
              toCollection:(nonnull id)assetCollection
              withProgress:(nullable PTCLProgressBlock)progressBlock
                  andBlock:(nullable PTCLMediaLibraryBlockVoidBOOLNSError)block
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doSaveVideoFromUrl:videoUrl
                                           toCollection:assetCollection
                                           withProgress:progressBlock
                                               andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Collection Items CRUD

- (void)doLoadCollectionsWithProgress:(nullable PTCLProgressBlock)progressBlock
                             andBlock:(nullable PTCLMediaLibraryBlockVoidNSArrayNSError)block
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doLoadCollectionsWithProgress:progressBlock
                                                          andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadAssetsOfMediaTypes:(nullable NSArray*)mediaTypes
                    withProgress:(nullable PTCLProgressBlock)progressBlock
                        andBlock:(nullable PTCLMediaLibraryBlockVoidNSArrayNSError)block
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doLoadAssetsOfMediaTypes:mediaTypes
                                                 withProgress:progressBlock
                                                     andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadAssetsForCollection:(nonnull id)assetCollection
                     ofMediaTypes:(nullable NSArray*)mediaTypes
                     withProgress:(nullable PTCLProgressBlock)progressBlock
                         andBlock:(nullable PTCLMediaLibraryBlockVoidNSArrayNSError)block
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doLoadAssetsForCollection:assetCollection
                                                  ofMediaTypes:mediaTypes
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
