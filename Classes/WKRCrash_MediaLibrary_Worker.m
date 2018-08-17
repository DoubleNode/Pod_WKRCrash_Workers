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

- (void)doRequestAuthorizationWithCompletionBlock:(nullable PTCLMediaLibraryBlockVoidNSError)completionBlock
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doRequestAuthorizationWithCompletionBlock:completionBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Single Item Relationship CRUD

- (void)doLoadAudio:(nonnull id)asset
               size:(CGSize)size
    completionBlock:(nullable PTCLMediaLibraryBlockVoidNSURLNSDictionary)completionBlock
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doLoadAudio:asset
                                            size:size
                                 completionBlock:completionBlock];
        return;
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
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadVideo:(nonnull id)asset
               size:(CGSize)size
    completionBlock:(nullable PTCLMediaLibraryBlockVoidNSURLNSDictionary)completionBlock
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doLoadVideo:asset
                                            size:size
                                 completionBlock:completionBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveImage:(UIImage* _Nullable)image
withCompletionBlock:(nullable PTCLMediaLibraryBlockVoidBOOLNSError)completionBlock
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doSaveImage:image
                             withCompletionBlock:completionBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveImage:(UIImage* _Nullable)image
       toCollection:(nonnull id)assetCollection
withCompletionBlock:(nullable PTCLMediaLibraryBlockVoidBOOLNSError)completionBlock
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doSaveImage:image
                                    toCollection:assetCollection
                             withCompletionBlock:completionBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveAudioFromUrl:(NSURL* _Nullable)videoUrl
       withCompletionBlock:(nullable PTCLMediaLibraryBlockVoidBOOLNSError)completionBlock
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doSaveAudioFromUrl:videoUrl
                                    withCompletionBlock:completionBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveAudioFromUrl:(NSURL* _Nullable)videoUrl
              toCollection:(nonnull id)assetCollection
       withCompletionBlock:(nullable PTCLMediaLibraryBlockVoidBOOLNSError)completionBlock
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doSaveAudioFromUrl:videoUrl
                                           toCollection:assetCollection
                                    withCompletionBlock:completionBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;}

- (void)doSaveImageFromUrl:(NSURL* _Nullable)imageUrl
       withCompletionBlock:(nullable PTCLMediaLibraryBlockVoidBOOLNSError)completionBlock
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doSaveImageFromUrl:imageUrl
                                    withCompletionBlock:completionBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveImageFromUrl:(NSURL* _Nullable)imageUrl
              toCollection:(nonnull id)assetCollection
       withCompletionBlock:(nullable PTCLMediaLibraryBlockVoidBOOLNSError)completionBlock
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doSaveImageFromUrl:imageUrl
                                           toCollection:assetCollection
                                    withCompletionBlock:completionBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveVideoFromUrl:(NSURL* _Nullable)videoUrl
       withCompletionBlock:(nullable PTCLMediaLibraryBlockVoidBOOLNSError)completionBlock
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doSaveVideoFromUrl:videoUrl
                                    withCompletionBlock:completionBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveVideoFromUrl:(NSURL* _Nullable)videoUrl
              toCollection:(nonnull id)assetCollection
       withCompletionBlock:(nullable PTCLMediaLibraryBlockVoidBOOLNSError)completionBlock
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doSaveVideoFromUrl:videoUrl
                                           toCollection:assetCollection
                                    withCompletionBlock:completionBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Collection Items CRUD

- (void)doLoadCollectionsWithCompletionBlock:(nullable PTCLMediaLibraryBlockVoidNSArrayNSError)completionBlock
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doLoadCollectionsWithCompletionBlock:completionBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadAssetsOfMediaTypes:(nullable NSArray*)mediaTypes
             withCompletionBlock:(nullable PTCLMediaLibraryBlockVoidNSArrayNSError)completionBlock
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doLoadAssetsOfMediaTypes:mediaTypes
                                          withCompletionBlock:completionBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadAssetsForCollection:(nonnull id)assetCollection
                     ofMediaTypes:(nullable NSArray*)mediaTypes
              withCompletionBlock:(nullable PTCLMediaLibraryBlockVoidNSArrayNSError)completionBlock
{
    if (self.nextMediaLibraryWorker)
    {
        [self.nextMediaLibraryWorker doLoadAssetsForCollection:assetCollection
                                                  ofMediaTypes:mediaTypes
                                           withCompletionBlock:completionBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
