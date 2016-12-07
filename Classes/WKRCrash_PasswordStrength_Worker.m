//
//  WKRCrash_PasswordStrength_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_PasswordStrength_Worker.h"

@implementation WKRCrash_PasswordStrength_Worker

@synthesize nextBaseWorker;
@synthesize nextPasswordStrengthWorker;

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLPasswordStrength_Protocol>)nextPasswordStrengthWorker
{
    return [[self.class alloc] initWithWorker:nextPasswordStrengthWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextPasswordStrengthWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLPasswordStrength_Protocol>)nextPasswordStrengthWorker_
{
    self = [super initWithWorker:nextPasswordStrengthWorker_];
    if (self)
    {
        self.nextPasswordStrengthWorker = nextPasswordStrengthWorker_;
    }
    
    return self;
}

#pragma mark - Common Methods

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextPasswordStrengthWorker)
    {
        [self.nextPasswordStrengthWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextPasswordStrengthWorker)
    {
        [self.nextPasswordStrengthWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic

- (WKRPasswordStrengthType)doCheckPasswordStrength:(NSString*)password
{
    if (self.nextPasswordStrengthWorker)
    {
        [self.nextPasswordStrengthWorker doCheckPasswordStrength:password];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
