//
//  WKRCrash_Location_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Location_Worker.h"

@interface WKRCrash_Location_Worker ()

@end

@implementation WKRCrash_Location_Worker

@synthesize nextBaseWorker;
@synthesize nextLocationWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLLocation_Protocol>)nextLocationWorker
{
    return [[self.class alloc] initWithWorker:nextLocationWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextLocationWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLLocation_Protocol>)nextLocationWorker_
{
    self = [super initWithWorker:nextLocationWorker_];
    if (self)
    {
        self.nextLocationWorker = nextLocationWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)configure
{
    [super configure];
}

#pragma mark - Business Logic / Single Item Security CRUD

- (void)doLoadSecurityForObject:(nonnull DAOLocation*)location
                   withProgress:(nullable PTCLProgressBlock)progressBlock
                       andBlock:(nullable PTCLLocationBlockVoidNSStringNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doLoadSecurityForObject:location
                                            withProgress:progressBlock
                                                andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteSecurityForObject:(nonnull DAOLocation*)location
                     withProgress:(nullable PTCLProgressBlock)progressBlock
                         andBlock:(nullable PTCLLocationBlockVoidBOOLNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doDeleteSecurityForObject:location
                                              withProgress:progressBlock
                                                  andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveSecurity:(nonnull NSString*)security
             forObject:(nonnull DAOLocation*)location
          withProgress:(nullable PTCLProgressBlock)progressBlock
              andBlock:(nullable PTCLLocationBlockVoidBOOLNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doSaveSecurity:security
                                      forObject:location
                                   withProgress:progressBlock
                                       andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doVerifySecurity:(nonnull NSString*)security
               forObject:(nonnull DAOLocation*)location
            withProgress:(nullable PTCLProgressBlock)progressBlock
                andBlock:(nullable PTCLLocationBlockVoidBOOLNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doVerifySecurity:security
                                        forObject:location
                                     withProgress:progressBlock
                                         andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)locationId
                withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidDAOLocationNSErrorContinue)block
           andUpdateBlock:(nullable PTCLLocationBlockVoidDAOLocationNSError)updateBlock
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doLoadObjectForId:locationId
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

- (void)doDeleteObject:(nonnull DAOLocation*)location
             withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidBOOLNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doDeleteObject:location
                                      withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObject:(nonnull DAOLocation*)location
          fromCategory:(nonnull DAOCategory*)category
             withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidBOOLNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doDeleteObject:location
                                   fromCategory:category
                                      withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOLocation*)location
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidDAOLocationNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doSaveObject:location
                                    withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOLocation*)location
          inCategory:(nonnull DAOCategory*)category
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidDAOLocationNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doSaveObject:location
                                   inCategory:category
                                    withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObjectOptions:(nonnull DAOLocation*)location
                  withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidBOOLNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doSaveObjectOptions:location
                                           withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveOption:(nonnull NSString*)optionId
              andKey:(nonnull NSString*)optionKey
            andValue:(nullable id)optionValue
         forLocation:(nonnull DAOLocation*)daoLocation
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidBOOLNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doSaveOption:optionId
                                       andKey:optionKey
                                     andValue:optionValue
                                  forLocation:daoLocation
                                    withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doFlagObject:(nonnull DAOLocation*)location
          withAction:(nonnull NSString*)action
             andText:(nonnull NSString*)text
            andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doFlagObject:location
                                   withAction:action
                                      andText:text
                                     andProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doFlagObject:(nonnull DAOLocation*)location
             forUser:(nullable DAOUser*)flaggingUser
          withAction:(nonnull NSString*)action
             andText:(nonnull NSString*)text
            andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doFlagObject:location
                                      forUser:flaggingUser
                                   withAction:action
                                      andText:text
                                     andProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteFlag:(nonnull DAOFlag*)flag
           forObject:(nonnull DAOLocation*)location
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doDeleteFlag:flag
                                    forObject:location
                                    withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnflagObject:(nonnull DAOLocation*)location
            withAction:(nonnull NSString*)action
               andText:(nonnull NSString*)text
              andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doUnflagObject:location
                                     withAction:action
                                        andText:text
                                       andProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doCheckFlagObject:(nonnull DAOLocation*)location
               withAction:(nonnull NSString*)action
                 andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidNSUIntegerNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doCheckFlagObject:location
                                        withAction:action
                                          andProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doFollowObject:(nonnull DAOLocation*)location
             withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doFollowObject:location
                                      withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnfollowObject:(nonnull DAOLocation*)location
               withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doUnfollowObject:location
                                        withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doTagObject:(nonnull DAOLocation*)location
            withTag:(nonnull NSString*)tag
           andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doTagObject:location
                                     withTag:tag
                                    andProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUntagObject:(nonnull DAOLocation*)location
              withTag:(nonnull NSString*)tag
             andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidNSError)block
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doUntagObject:location
                                       withTag:tag
                                      andProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Single Item Relationship CRUD

- (void)doLoadItemsForObject:(nonnull DAOLocation*)location
                   withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidNSArrayDAOItemNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLLocationBlockVoidNSArrayDAOItemNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doLoadItemsForObject:location
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

- (void)doLoadPhotosForObject:(nonnull DAOLocation*)location
                    withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidNSArrayDAOPhotoNSUIntegerNSUIntegerNSErrorContinue)block
               andUpdateBlock:(nullable PTCLLocationBlockVoidNSArrayDAOPhotoNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doLoadPhotosForObject:location
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

#pragma mark - Business Logic / Collection Items CRUD

- (void)doLoadFlagsForObject:(nonnull DAOLocation*)location
                 withActions:(nonnull NSArray<NSString*>*)actions
                    andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLLocationBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doLoadFlagsForObject:location
                                          withActions:actions
                                             andProgress:progressBlock
                 andBlock:block
                                       andUpdateBlock:updateBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadMyFlagsForObject:(nonnull DAOLocation*)location
                   withActions:(nonnull NSArray<NSString*>*)actions
                      andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSErrorContinue)block
                andUpdateBlock:(nullable PTCLLocationBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doLoadMyFlagsForObject:location
                                            withActions:actions
                                               andProgress:progressBlock
                 andBlock:block
                                         andUpdateBlock:updateBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadTagsForObject:(nonnull DAOLocation*)location
                   andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidNSArrayNSStringNSUIntegerNSUIntegerNSErrorContinue)block
             andUpdateBlock:(nullable PTCLLocationBlockVoidNSArrayNSStringNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doLoadTagsForObject:location
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

- (void)doLoadObjects:(nonnull NSString*)searchId
             withText:(nonnull NSString*)search
        withLongitude:(nullable NSNumber*)longitude
         withLatitude:(nullable NSNumber*)latitude
       withParameters:(nullable NSDictionary*)parameters
             andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationSearchBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
       andUpdateBlock:(nullable PTCLLocationSearchBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doLoadObjects:searchId
                                      withText:search
                                 withLongitude:longitude
                                  withLatitude:latitude
                                withParameters:parameters
                                      andProgress:progressBlock
                 andBlock:block
                                andUpdateBlock:updateBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadObjectsWithTag:(nonnull NSString*)tag
              withParameters:(nullable NSDictionary*)parameters
                    andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidNSArrayDAOLocationNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLLocationBlockVoidNSArrayDAOLocationNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doLoadObjectsWithTag:tag
                                       withParameters:parameters
                                             andProgress:progressBlock
                 andBlock:block
                                       andUpdateBlock:updateBlock];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doLoadTagsForObject:(nonnull DAOLocation*)location
                  withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLLocationBlockVoidNSArrayNSStringNSUIntegerNSUIntegerNSErrorContinue)block
             andUpdateBlock:(nullable PTCLLocationBlockVoidNSArrayNSStringNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextLocationWorker)
    {
        [self.nextLocationWorker doLoadTagsForObject:location
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
