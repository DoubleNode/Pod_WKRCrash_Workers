//
//  WKRCrash_Validation_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Validation_Worker.h"

@interface WKRCrash_Validation_Worker ()

@end

@implementation WKRCrash_Validation_Worker

@synthesize nextBaseWorker;
@synthesize nextValidationWorker;

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLValidation_Protocol>)nextValidationWorker
{
    id<PTCLValidation_Protocol> worker  = [[self.class alloc] init];
    worker.nextValidationWorker         = nextValidationWorker;
    return worker;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextValidationWorker)
    {
        [self.nextValidationWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextValidationWorker)
    {
        [self.nextValidationWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic

- (BOOL)doValidateBirthday:(NSDate*)birthday
                     error:(NSError**)error
{
    if (self.nextValidationWorker)
    {
        [self.nextValidationWorker doValidateBirthday:birthday
                                                error:error];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (BOOL)doValidateEmail:(NSString*)email
                  error:(NSError**)error
{
    if (self.nextValidationWorker)
    {
        [self.nextValidationWorker doValidateEmail:email
                                             error:error];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (BOOL)doValidateHandle:(NSString*)handle
                   error:(NSError**)error
{
    if (self.nextValidationWorker)
    {
        [self.nextValidationWorker doValidateHandle:handle
                                              error:error];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (BOOL)doValidateName:(NSString*)name
                 error:(NSError**)error
{
    if (self.nextValidationWorker)
    {
        [self.nextValidationWorker doValidateName:name
                                            error:error];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (BOOL)doValidateNumber:(nonnull NSString*)number
                   error:(NSError*_Nullable*_Nullable)error
{
    if (self.nextValidationWorker)
    {
        [self.nextValidationWorker doValidateNumber:number
                                              error:error];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (BOOL)doValidatePassword:(NSString*)password
                     error:(NSError**)error
{
    if (self.nextValidationWorker)
    {
        [self.nextValidationWorker doValidatePassword:password
                                                error:error];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (BOOL)doValidatePercentage:(nonnull NSString*)percentage
                       error:(NSError*_Nullable*_Nullable)error
{
    if (self.nextValidationWorker)
    {
        [self.nextValidationWorker doValidatePercentage:percentage
                                                  error:error];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (BOOL)doValidateSearch:(NSString*)search
                   error:(NSError**)error
{
    if (self.nextValidationWorker)
    {
        [self.nextValidationWorker doValidateSearch:search
                                              error:error];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (BOOL)doValidateState:(NSString*)state
                  error:(NSError**)error
{
    if (self.nextValidationWorker)
    {
        [self.nextValidationWorker doValidateState:state
                                             error:error];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
