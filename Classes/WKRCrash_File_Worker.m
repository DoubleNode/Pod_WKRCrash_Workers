//
//  WKRCrash_File_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_File_Worker.h"

@interface WKRCrash_File_Worker ()

@end

@implementation WKRCrash_File_Worker

@synthesize nextBaseWorker;
@synthesize nextFileWorker;

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLFile_Protocol>)nextFileWorker
{
    id<PTCLFile_Protocol> worker    = [[self.class alloc] init];
    worker.nextFileWorker           = nextFileWorker;
    return worker;
}

- (void)configure
{
    
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

- (void)saveFileInBackgroundForUser:(nonnull DAOUser*)user
                           withName:(nonnull NSString*)fileName
                               data:(nonnull NSData*)data
                              block:(nullable PTCLFileBlockVoidNSStringIDBOOLNSError)block
{
    if (self.nextFileWorker)
    {
        [self.nextFileWorker saveFileInBackgroundForUser:user
                                                withName:fileName
                                                    data:data
                                                   block:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
