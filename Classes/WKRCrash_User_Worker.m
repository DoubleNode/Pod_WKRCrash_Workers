//
//  WKRCrash_User_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_User_Worker.h"

@interface WKRCrash_User_Worker ()

@end

@implementation WKRCrash_User_Worker

@synthesize nextBaseWorker;
@synthesize nextUserWorker;

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLUser_Protocol>)nextUserWorker
{
    return [[self.class alloc] initWithWorker:nextUserWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextUserWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLUser_Protocol>)nextUserWorker_
{
    self = [super initWithWorker:nextUserWorker_];
    if (self)
    {
        self.nextUserWorker = nextUserWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic

- (BOOL)doCheckForAccessTokenError:(nullable NSData*)errorData
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doCheckForAccessTokenError:errorData];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doCurrentAccessTokenWithBlock:(nullable PTCLUserBlockVoidDAOUserNSString)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doCurrentAccessTokenWithBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doCurrentUserWithBlock:(nullable PTCLUserBlockVoidDAOUser)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doCurrentUserWithBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteCurrentUserWithBlock:(nullable PTCLUserBlockVoidBOOLNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doDeleteCurrentUserWithBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLogOut
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doLogOut];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)validateCurrentSessionInBackgroundWithBlock:(nullable PTCLUserBlockVoidDAOUserBOOLNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker validateCurrentSessionInBackgroundWithBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)logInWithUsernameInBackground:(nonnull NSString*)authType
                             username:(nonnull NSString*)username
                             password:(nonnull NSString*)password
                            withBlock:(nullable PTCLUserBlockVoidDAOUserBOOLNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker logInWithUsernameInBackground:authType
                                                  username:username
                                                  password:password
                                                 withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doFlagObject:(nonnull DAOUser*)user
          withAction:(nonnull NSString*)action
             andText:(nonnull NSString*)text
            andBlock:(nullable PTCLUserBlockVoidNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doFlagObject:user
                               withAction:action
                                  andText:text
                                 andBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doFlagObject:(nonnull DAOUser*)user
             forUser:(nullable DAOUser*)flaggingUser
          withAction:(nonnull NSString*)action
             andText:(nonnull NSString*)text
            andBlock:(nullable PTCLUserBlockVoidNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doFlagObject:user
                                  forUser:flaggingUser
                               withAction:action
                                  andText:text
                                 andBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteFlag:(nonnull DAOFlag*)flag
           forObject:(nonnull DAOUser*)user
           withBlock:(nullable PTCLUserBlockVoidNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doDeleteFlag:flag
                                forObject:user
                                withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnflagObject:(nonnull DAOUser*)user
            withAction:(nonnull NSString*)action
               andText:(nonnull NSString*)text
              andBlock:(nullable PTCLUserBlockVoidNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doUnflagObject:user
                                 withAction:action
                                    andText:text
                                   andBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doCheckFlagObject:(nonnull DAOUser*)user
               withAction:(nonnull NSString*)action
                 andBlock:(nullable PTCLUserBlockVoidNSUIntegerNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doCheckFlagObject:user
                                    withAction:action
                                      andBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doFollowUser:(nonnull DAOUser*)user
           withBlock:(nullable PTCLUserBlockVoidBOOLNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doFollowUser:user
                                withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnfollowUser:(nonnull DAOUser*)user
             withBlock:(nullable PTCLUserBlockVoidBOOLNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doUnfollowUser:user
                                  withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoad:(nonnull NSString*)userId
     withBlock:(nullable PTCLUserBlockVoidDAOUserNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doLoad:userId
                          withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doVerify:(nonnull DAOUser*)user
       withBlock:(nullable PTCLUserBlockVoidDAOUserNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doVerify:user
                            withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadAvatarForUser:(nonnull DAOUser*)user
                  withBlock:(nullable PTCLUserBlockVoidDAOPhotoNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doLoadAvatarForUser:user
                                       withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadLocationsForObject:(nonnull DAOUser*)user
                       withBlock:(nullable PTCLUserBlockVoidNSArrayDAOLocationNSUIntegerNSUIntegerNSErrorContinue)block
                  andUpdateBlock:(nullable PTCLUserBlockVoidNSArrayDAOLocationNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doLoadLocationsForObject:user
                                            withBlock:block
                                       andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doResetPasswordForEmail:(nonnull NSString*)email
                      withBlock:(nullable PTCLUserBlockVoidBOOLNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doResetPasswordForEmail:email
                                           withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)saveInBackground:(nonnull DAOUser*)user
               withBlock:(nullable PTCLUserBlockVoidBOOLNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker saveInBackground:user
                                    withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)saveOptionsInBackground:(nonnull DAOUser*)daoUser
                      withBlock:(nullable PTCLUserBlockVoidBOOLNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker saveOptionsInBackground:daoUser
                                           withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)signUpInBackground:(nonnull DAOUser*)user
                 withBlock:(nullable PTCLUserBlockVoidBOOLNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker signUpInBackground:user
                                      withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSearchUsers:(nonnull NSString*)searchId
             withText:(nonnull NSString*)search
       withParameters:(nullable NSDictionary*)parameters
             andBlock:(nullable PTCLUserSearchBlockVoidNSArrayNSUIntegerNSUIntegerNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doSearchUsers:searchId
                                  withText:search
                            withParameters:parameters
                                  andBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveOption:(nonnull NSString*)optionId
              andKey:(nonnull NSString*)optionKey
            andValue:(nullable id)optionValue
             forUser:(nonnull DAOUser*)daoUser
           withBlock:(nullable PTCLUserBlockVoidBOOLNSError)block
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doSaveOption:optionId
                                   andKey:optionKey
                                 andValue:optionValue
                                  forUser:daoUser
                                withBlock:block];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Collection Items CRUD

- (void)doLoadAllFlagsForObject:(nonnull DAOUser*)user
                    withActions:(nonnull NSArray<NSString*>*)actions
                       andBlock:(nullable PTCLUserBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSErrorContinue)block
                 andUpdateBlock:(nullable PTCLUserBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSError)updateBlock;
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doLoadAllFlagsForObject:user
                                         withActions:actions
                                            andBlock:block
                                      andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadFlagsForObject:(nonnull DAOUser*)user
                 withActions:(nonnull NSArray<NSString*>*)actions
                    andBlock:(nullable PTCLUserBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLUserBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doLoadFlagsForObject:user
                                      withActions:actions
                                         andBlock:block
                                   andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadMyFlagsForObject:(nonnull DAOUser*)user
                   withActions:(nonnull NSArray<NSString*>*)actions
                      andBlock:(nullable PTCLUserBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSErrorContinue)block
                andUpdateBlock:(nullable PTCLUserBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextUserWorker)
    {
        [self.nextUserWorker doLoadMyFlagsForObject:user
                                        withActions:actions
                                           andBlock:block
                                     andUpdateBlock:updateBlock];
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

@end
