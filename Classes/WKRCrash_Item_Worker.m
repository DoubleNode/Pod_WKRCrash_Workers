//
//  WKRCrash_Item_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Item_Worker.h"

@interface WKRCrash_Item_Worker ()

@end

@implementation WKRCrash_Item_Worker

@synthesize nextBaseWorker;
@synthesize nextItemWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLItem_Protocol>)nextItemWorker
{
    return [[self.class alloc] initWithWorker:nextItemWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextItemWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLItem_Protocol>)nextItemWorker_
{
    self = [super initWithWorker:nextItemWorker_];
    if (self)
    {
        self.nextItemWorker = nextItemWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)configure
{
    [super configure];
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)itemId
                withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidDAOItemNSErrorContinue)block
           andUpdateBlock:(nullable PTCLItemBlockVoidDAOItemNSError)updateBlock
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doLoadObjectForId:itemId
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

- (void)doDeleteObject:(nonnull DAOItem*)item
             withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidBOOLNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doDeleteObject:item
                                  withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doDeleteObject:(nonnull DAOItem*)item
          fromCategory:(nonnull DAOCategory*)category
             withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidBOOLNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doDeleteObject:item
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

- (void)doDeleteObject:(nonnull DAOItem*)item
          fromLocation:(nonnull DAOLocation*)location
             withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidBOOLNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doDeleteObject:item
                               fromLocation:location
                                  withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOItem*)item
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidDAOItemNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doSaveObject:item
                                withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOItem*)item
          inCategory:(nonnull DAOCategory*)category
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidDAOItemNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doSaveObject:item
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

- (void)doSaveObject:(nonnull DAOItem*)item
          inLocation:(nonnull DAOLocation*)location
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidDAOItemNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doSaveObject:item
                               inLocation:location
                                withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObjectOptions:(nonnull DAOItem*)item
                  withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidBOOLNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doSaveObjectOptions:item
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
             forItem:(nonnull DAOItem*)daoItem
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidBOOLNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doSaveOption:optionId
                                   andKey:optionKey
                                 andValue:optionValue
                                  forItem:daoItem
                                withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doFavoriteObject:(nonnull DAOItem*)item
               withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doFavoriteObject:item
                                    withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnfavoriteObject:(nonnull DAOItem*)item
                 withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doUnfavoriteObject:item
                                      withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doFlagObject:(nonnull DAOItem*)item
          withAction:(nonnull NSString*)action
             andText:(nonnull NSString*)text
            andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doFlagObject:item
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

- (void)doFlagObject:(nonnull DAOItem*)item
             forUser:(nullable DAOUser*)flaggingUser
          withAction:(nonnull NSString*)action
             andText:(nonnull NSString*)text
            andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doFlagObject:item
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
           forObject:(nonnull DAOItem*)item
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doDeleteFlag:flag
                                forObject:item
                                withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnflagObject:(nonnull DAOItem*)item
            withAction:(nonnull NSString*)action
               andText:(nonnull NSString*)text
              andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doUnflagObject:item
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

- (void)doCheckFlagObject:(nonnull DAOItem*)item
               withAction:(nonnull NSString*)action
                 andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSUIntegerNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doCheckFlagObject:item
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

- (void)doSaveFlag:(nonnull DAOFlag*)flag
          andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doSaveFlag:flag
                              withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doTagObject:(nonnull DAOItem*)item
            withTag:(nonnull NSString*)tag
           andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doTagObject:item
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

- (void)doUntagObject:(nonnull DAOItem*)item
              withTag:(nonnull NSString*)tag
             andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doUntagObject:item
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

- (void)doWishlistObject:(nonnull DAOItem*)item
               withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doWishlistObject:item
                                    withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doUnwishlistObject:(nonnull DAOItem*)item
                 withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doUnwishlistObject:item
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

- (void)doLoadLocationsForObject:(nonnull DAOItem*)item
                       withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSArrayDAOLocationNSUIntegerNSUIntegerNSErrorContinue)block
                  andUpdateBlock:(nullable PTCLItemBlockVoidNSArrayDAOLocationNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doLoadLocationsForObject:item
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

- (void)doLoadPhotosForObject:(nonnull DAOItem*)item
                    withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSArrayDAOPhotoNSUIntegerNSUIntegerNSErrorContinue)block
               andUpdateBlock:(nullable PTCLItemBlockVoidNSArrayDAOPhotoNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doLoadPhotosForObject:item
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

- (void)doLoadFlagsForObject:(nonnull DAOItem*)item
                 withActions:(nonnull NSArray<NSString*>*)actions
                    andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLItemBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doLoadFlagsForObject:item
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

- (void)doLoadMyFlagsForObject:(nonnull DAOItem*)item
                   withActions:(nonnull NSArray<NSString*>*)actions
                      andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSErrorContinue)block
                andUpdateBlock:(nullable PTCLItemBlockVoidNSArrayDAOFlagNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doLoadMyFlagsForObject:item
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

- (void)doLoadTagsForObject:(nonnull DAOItem*)item
                   andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSArrayNSStringNSUIntegerNSUIntegerNSErrorContinue)block
             andUpdateBlock:(nullable PTCLItemBlockVoidNSArrayNSStringNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doLoadTagsForObject:item
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
       withParameters:(nullable NSDictionary*)parameters
             andProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSStringNSArrayDAOItemNSUIntegerNSUIntegerNSErrorContinue)block
       andUpdateBlock:(nullable PTCLItemBlockVoidNSStringNSArrayDAOItemNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doLoadObjects:searchId
                                  withText:search
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
                 andBlock:(nullable PTCLItemBlockVoidNSArrayDAOItemNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLItemBlockVoidNSArrayDAOItemNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doLoadObjectsWithTag:tag
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

- (void)doLoadTagsForObject:(nonnull DAOItem*)item
                  withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSArrayNSStringNSUIntegerNSUIntegerNSErrorContinue)block
             andUpdateBlock:(nullable PTCLItemBlockVoidNSArrayNSStringNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doLoadTagsForObject:item
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

- (void)doSaveFlag:(nonnull DAOFlag*)flag
         withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLItemBlockVoidNSError)block
{
    if (self.nextItemWorker)
    {
        [self.nextItemWorker doSaveFlag:flag
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
