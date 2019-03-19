//
//  WKRCrash_Category_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Category_Worker.h"

@interface WKRCrash_Category_Worker ()

@end

@implementation WKRCrash_Category_Worker

@synthesize nextBaseWorker;
@synthesize nextCategoryWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLCategory_Protocol>)nextCategoryWorker
{
    return [[self.class alloc] initWithWorker:nextCategoryWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextCategoryWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLCategory_Protocol>)nextCategoryWorker_
{
    self = [super initWithWorker:nextCategoryWorker_];
    if (self)
    {
        self.nextCategoryWorker = nextCategoryWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)categoryId
                withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategoryBlockVoidDAOCategoryNSErrorContinue)block
           andUpdateBlock:(nullable PTCLCategoryBlockVoidDAOCategoryNSError)updateBlock
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doLoadObjectForId:categoryId
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

- (void)doSaveObject:(nonnull DAOCategory*)category
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategoryBlockVoidDAOCategoryNSError)block
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doSaveObject:category
                                    withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObjectOptions:(nonnull DAOCategory*)category
                  withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategoryBlockVoidBOOLNSError)block
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doSaveObjectOptions:category
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
         forCategory:(nonnull DAOCategory*)daoCategory
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategoryBlockVoidBOOLNSError)block
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doSaveOption:optionId
                                       andKey:optionKey
                                     andValue:optionValue
                                  forCategory:daoCategory
                                    withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doFollowObject:(nonnull DAOCategory*)category
             withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategoryBlockVoidNSError)block
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doFollowObject:category
                                      withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnfollowObject:(nonnull DAOCategory*)category
               withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategoryBlockVoidNSError)block
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doUnfollowObject:category
                                        withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doFlagObject:(nonnull DAOCategory*)category
          withAction:(nonnull NSString*)action
             andText:(nonnull NSString*)text
            andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategoryBlockVoidNSError)block
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doFlagObject:category
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

- (void)doFlagObject:(nonnull DAOCategory*)category
             forUser:(nullable DAOUser*)flaggingUser
          withAction:(nonnull NSString*)action
             andText:(nonnull NSString*)text
            andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategoryBlockVoidNSError)block
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doFlagObject:category
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
           forObject:(nonnull DAOCategory*)category
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategoryBlockVoidNSError)block
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doDeleteFlag:flag
                                    forObject:category
                                    withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnflagObject:(nonnull DAOCategory*)category
            withAction:(nonnull NSString*)action
               andText:(nonnull NSString*)text
              andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategoryBlockVoidNSError)block
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doUnflagObject:category
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

- (void)doCheckFlagObject:(nonnull DAOCategory*)category
               withAction:(nonnull NSString*)action
                 andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategoryBlockVoidNSUIntegerNSError)block
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doCheckFlagObject:category
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

- (void)doTagObject:(nonnull DAOCategory*)category
            withTag:(nonnull NSString*)tag
           andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategoryBlockVoidNSError)block
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doTagObject:category
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

- (void)doUntagObject:(nonnull DAOCategory*)category
              withTag:(nonnull NSString*)tag
             andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategoryBlockVoidNSError)block
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doUntagObject:category
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

- (void)doLoadItemsForObject:(nonnull DAOCategory*)category
              withParameters:(nullable NSDictionary*)parameters
                    andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategoryBlockVoidNSArrayDAOItemNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLCategoryBlockVoidNSArrayDAOItemNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doLoadItemsForObject:category
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

- (void)doLoadPhotosForObject:(nonnull DAOCategory*)category
                    withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategoryBlockVoidNSArrayDAOPhotoNSUIntegerNSUIntegerNSErrorContinue)block
               andUpdateBlock:(nullable PTCLCategoryBlockVoidNSArrayDAOPhotoNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doLoadPhotosForObject:category
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

- (void)doLoadFlagsForObject:(nonnull DAOCategory*)category
                 withActions:(nonnull NSArray<NSString*>*)actions
                    andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategoryBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLCategoryBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doLoadFlagsForObject:category
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

- (void)doLoadMyFlagsForObject:(nonnull DAOCategory*)category
                   withActions:(nonnull NSArray<NSString*>*)actions
                      andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategoryBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSErrorContinue)block
                andUpdateBlock:(nullable PTCLCategoryBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doLoadMyFlagsForObject:category
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

- (void)doLoadTagsForObject:(nonnull DAOCategory*)category
                   andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategoryBlockVoidNSArrayNSStringNSUIntegerNSUIntegerNSErrorContinue)block
             andUpdateBlock:(nullable PTCLCategoryBlockVoidNSArrayNSStringNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doLoadTagsForObject:category
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

- (void)doLoadObjects:(nonnull NSString*)searchId
             withText:(nonnull NSString*)search
        withLongitude:(nullable NSNumber*)longitude
         withLatitude:(nullable NSNumber*)latitude
       withParameters:(nullable NSDictionary*)parameters
             andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLCategorySearchBlockVoidNSArrayNSUIntegerNSUIntegerNSErrorContinue)block
       andUpdateBlock:(nullable PTCLCategorySearchBlockVoidNSArrayNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doLoadObjects:searchId
                                      withText:searchId
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
                 andBlock:(nullable PTCLCategoryBlockVoidNSArrayDAOCategoryNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLCategoryBlockVoidNSArrayDAOCategoryNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextCategoryWorker)
    {
        [self.nextCategoryWorker doLoadObjectsWithTag:tag
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

@end
