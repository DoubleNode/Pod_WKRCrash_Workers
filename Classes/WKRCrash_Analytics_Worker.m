//
//  WKRCrash_Analytics_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Analytics_Worker.h"

@interface WKRCrash_Analytics_Worker ()

@end

@implementation WKRCrash_Analytics_Worker

@synthesize nextBaseWorker;
@synthesize nextAnalyticsWorker;

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLAnalytics_Protocol>)nextAnalyticsWorker
{
    id<PTCLAnalytics_Protocol>  worker  = [[self.class alloc] init];
    worker.nextAnalyticsWorker  = nextAnalyticsWorker;
    return worker;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextAnalyticsWorker)
    {
        [self.nextAnalyticsWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextAnalyticsWorker)
    {
        [self.nextAnalyticsWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic

#pragma mark - Identify

- (void)doIdentify:(NSString* _Nonnull)userId
{
    if (self.nextAnalyticsWorker)
    {
        [self.nextAnalyticsWorker doIdentify:userId];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doIdentify:(NSString* _Nonnull)userId traits:(NSDictionary* _Nonnull)traits
{
    if (self.nextAnalyticsWorker)
    {
        [self.nextAnalyticsWorker doIdentify:userId traits:traits];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doIdentify:(NSString* _Nonnull)userId traits:(NSDictionary* _Nonnull)traits options:(NSDictionary* _Nonnull)options
{
    if (self.nextAnalyticsWorker)
    {
        [self.nextAnalyticsWorker doIdentify:userId traits:traits options:options];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Track

- (void)doTrack:(NSString* _Nonnull)event
{
    if (self.nextAnalyticsWorker)
    {
        [self.nextAnalyticsWorker doTrack:event];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doTrack:(NSString* _Nonnull)event properties:(NSDictionary* _Nonnull)properties
{
    if (self.nextAnalyticsWorker)
    {
        [self.nextAnalyticsWorker doTrack:event properties:properties];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doTrack:(NSString* _Nonnull)event properties:(NSDictionary* _Nonnull)properties options:(NSDictionary* _Nonnull)options
{
    if (self.nextAnalyticsWorker)
    {
        [self.nextAnalyticsWorker doTrack:event properties:properties options:options];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Screen

- (void)doScreen:(NSString* _Nonnull)screenTitle
{
    if (self.nextAnalyticsWorker)
    {
        [self.nextAnalyticsWorker doScreen:screenTitle];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doScreen:(NSString* _Nonnull)screenTitle properties:(NSDictionary* _Nonnull)properties
{
    if (self.nextAnalyticsWorker)
    {
        [self.nextAnalyticsWorker doScreen:screenTitle properties:properties];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doScreen:(NSString* _Nonnull)screenTitle properties:(NSDictionary* _Nonnull)properties options:(NSDictionary* _Nonnull)options
{
    if (self.nextAnalyticsWorker)
    {
        [self.nextAnalyticsWorker doScreen:screenTitle properties:properties options:options];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Group

- (void)doGroup:(NSString* _Nonnull)groupId
{
    if (self.nextAnalyticsWorker)
    {
        [self.nextAnalyticsWorker doGroup:groupId];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doGroup:(NSString* _Nonnull)groupId traits:(NSDictionary* _Nonnull)traits
{
    if (self.nextAnalyticsWorker)
    {
        [self.nextAnalyticsWorker doGroup:groupId traits:traits];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doGroup:(NSString* _Nonnull)groupId traits:(NSDictionary* _Nonnull)traits options:(NSDictionary* _Nonnull)options
{
    if (self.nextAnalyticsWorker)
    {
        [self.nextAnalyticsWorker doGroup:groupId traits:traits options:options];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
