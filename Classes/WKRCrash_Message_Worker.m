//
//  WKRCrash_Message_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Message_Worker.h"

@interface WKRCrash_Message_Worker ()

@end

@implementation WKRCrash_Message_Worker

@synthesize nextBaseWorker;
@synthesize nextMessageWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

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

- (void)doLoadObjectForId:(nonnull NSString*)messageId
                withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLMessageBlockVoidDAOMessageNSErrorContinue)block
           andUpdateBlock:(nullable PTCLMessageBlockVoidDAOMessageNSError)updateBlock
{
    if (self.nextMessageWorker)
    {
        [self.nextMessageWorker doLoadObjectForId:messageId
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

- (void)doDeleteObject:(nonnull DAOMessage*)message
             withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLMessageBlockVoidBOOLNSError)block
{
    if (self.nextMessageWorker)
    {
        [self.nextMessageWorker doDeleteObject:message
                                     withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOMessage*)message
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLMessageBlockVoidDAOMessageNSError)block
{
    if (self.nextMessageWorker)
    {
        [self.nextMessageWorker doSaveObject:message
                                   withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Single Item Relationship CRUD

- (void)doLoadPhotosForObject:(nonnull DAOMessage*)message
                    withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLMessageBlockVoidNSArrayDAOPhotoNSUIntegerNSUIntegerNSErrorContinue)block
               andUpdateBlock:(nullable PTCLMessageBlockVoidNSArrayDAOPhotoNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextMessageWorker)
    {
        [self.nextMessageWorker doLoadPhotosForObject:message
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

@end
