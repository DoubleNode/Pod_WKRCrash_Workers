//
//  WKRCrash_File_Worker.m
//  DoubleNode Crash Workers
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC.
//
//  WKRCore_Crash_Workers is released under the MIT license. See LICENSE for details.
//

#import "WKRCrash_File_Worker.h"

@interface WKRCrash_File_Worker ()

@end

@implementation WKRCrash_File_Worker

@synthesize nextBaseWorker;
@synthesize nextFileWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLFile_Protocol>)nextFileWorker
{
    return [[self.class alloc] initWithWorker:nextFileWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextFileWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLFile_Protocol>)nextFileWorker_
{
    self = [super initWithWorker:nextFileWorker_];
    if (self)
    {
        self.nextFileWorker = nextFileWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextFileWorker)
    {
        [self.nextFileWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextFileWorker)
    {
        [self.nextFileWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic

- (void)doSaveFileForUser:(nonnull DAOUser*)user
              andFilename:(nonnull NSString*)filename
              andMetadata:(nonnull NSDictionary*)metadata
                  andData:(nonnull NSData*)data
             withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLFileBlockVoidNSStringIDBOOLNSError)block
{
    if (self.nextFileWorker)
    {
        [self.nextFileWorker doSaveFileForUser:user
                                   andFilename:filename
                                   andMetadata:metadata
                                       andData:data
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
