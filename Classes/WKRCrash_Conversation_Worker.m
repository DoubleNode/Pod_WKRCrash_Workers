//
//  WKRCrash_Conversation_Worker.m
//  DoubleNode Core
//
//  Created by Darren Ehlers on 2016/10/16.
//  Copyright © 2016 Darren Ehlers and DoubleNode, LLC. All rights reserved.
//

#import "WKRCrash_Conversation_Worker.h"

@interface WKRCrash_Conversation_Worker ()

@end

@implementation WKRCrash_Conversation_Worker

@synthesize nextBaseWorker;
@synthesize nextConversationWorker;

#define ERROR_DOMAIN_CLASS      [NSString stringWithFormat:@"com.doublenode.%@", NSStringFromClass([self class])]
#define ERROR_UNKNOWN           1001
#define ERROR_NOT_IMPLEMENTED   1002

+ (instancetype _Nonnull)worker   {   return [self worker:nil]; }

+ (instancetype _Nonnull)worker:(nullable id<PTCLConversation_Protocol>)nextConversationWorker
{
    return [[self.class alloc] initWithWorker:nextConversationWorker];
}

- (nonnull instancetype)init
{
    self = [super init];
    if (self)
    {
        self.nextConversationWorker = nil;
    }
    
    return self;
}

- (nonnull instancetype)initWithWorker:(nullable id<PTCLConversation_Protocol>)nextConversationWorker_
{
    self = [super initWithWorker:nextConversationWorker_];
    if (self)
    {
        self.nextConversationWorker = nextConversationWorker_;
    }
    
    return self;
}

- (void)enableOption:(nonnull NSString*)option
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker enableOption:option];
    }
    
    // Options not used in this Worker
}

- (void)disableOption:(nonnull NSString*)option
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker disableOption:option];
    }
    
    // Options not used in this Worker
}

#pragma mark - Business Logic / Single Item CRUD

- (void)doLoadObjectForId:(nonnull NSString*)conversationId
                withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLConversationBlockVoidDAOConversationNSErrorContinue)block
           andUpdateBlock:(nullable PTCLConversationBlockVoidDAOConversationNSError)updateBlock
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker doLoadObjectForId:conversationId
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

- (void)doDeleteObject:(nonnull DAOConversation*)conversation
             withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLConversationBlockVoidBOOLNSError)block
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker doDeleteObject:conversation
                                          withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doSaveObject:(nonnull DAOConversation*)conversation
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLConversationBlockVoidDAOConversationNSError)block
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker doSaveObject:conversation
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

- (void)doAddCategory:(nonnull DAOCategory*)category
             toObject:(nonnull DAOConversation*)conversation
            withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLConversationBlockVoidBOOLNSError)block
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker doAddCategory:category
                                          toObject:conversation
                                         withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doAddItem:(nonnull DAOItem*)item
         toObject:(nonnull DAOConversation*)conversation
        withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLConversationBlockVoidBOOLNSError)block
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker doAddItem:item
                                      toObject:conversation
                                     withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doAddLocation:(nonnull DAOLocation*)location
             toObject:(nonnull DAOConversation*)conversation
            withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLConversationBlockVoidBOOLNSError)block
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker doAddLocation:location
                                          toObject:conversation
                                         withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doAddUser:(nonnull DAOUser*)user
         toObject:(nonnull DAOConversation*)conversation
        withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLConversationBlockVoidBOOLNSError)block
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker doAddUser:user
                                      toObject:conversation
                                     withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doRemoveCategory:(nonnull DAOCategory*)category
              fromObject:(nonnull DAOConversation*)conversation
               withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLConversationBlockVoidBOOLNSError)block
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker doRemoveCategory:category
                                           fromObject:conversation
                                            withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doRemoveItem:(nonnull DAOItem*)item
          fromObject:(nonnull DAOConversation*)conversation
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLConversationBlockVoidBOOLNSError)block
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker doRemoveItem:item
                                       fromObject:conversation
                                        withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doRemoveLocation:(nonnull DAOLocation*)location
              fromObject:(nonnull DAOConversation*)conversation
               withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLConversationBlockVoidBOOLNSError)block
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker doRemoveLocation:location
                                           fromObject:conversation
                                            withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

- (void)doRemoveUser:(nonnull DAOUser*)user
          fromObject:(nonnull DAOConversation*)conversation
           withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLConversationBlockVoidBOOLNSError)block
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker doRemoveUser:user
                                       fromObject:conversation
                                        withProgress:progressBlock
                 andBlock:block];
        return;
    }
    
    NSException*    exception = [NSException exceptionWithName:[NSString stringWithFormat:@"%@ Exception", NSStringFromClass(self.class)]
                                                        reason:@"Crash worker should not be actually used!"
                                                      userInfo:nil];
    @throw exception;
}

#pragma mark - Business Logic / Collection Items CRUD

- (void)doLoadCategoriesForObject:(nonnull DAOConversation*)conversation
                        withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLConversationBlockVoidNSArrayDAOCategoryNSUIntegerNSUIntegerNSErrorContinue)block
                   andUpdateBlock:(nullable PTCLConversationBlockVoidNSArrayDAOCategoryNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker doLoadCategoriesForObject:conversation
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

- (void)doLoadItemsForObject:(nonnull DAOConversation*)conversation
                   withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLConversationBlockVoidNSArrayDAOItemNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLConversationBlockVoidNSArrayDAOItemNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker doLoadItemsForObject:conversation
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

- (void)doLoadLocationsForObject:(nonnull DAOConversation*)conversation
                       withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLConversationBlockVoidNSArrayDAOLocationNSUIntegerNSUIntegerNSErrorContinue)block
                  andUpdateBlock:(nullable PTCLConversationBlockVoidNSArrayDAOLocationNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker doLoadLocationsForObject:conversation
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

- (void)doLoadMessagesForObject:(nonnull DAOConversation*)conversation
                      withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLConversationBlockVoidNSArrayDAOMessageNSUIntegerNSUIntegerNSErrorContinue)block
                 andUpdateBlock:(nullable PTCLConversationBlockVoidNSArrayDAOMessageNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker doLoadMessagesForObject:conversation
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

- (void)doLoadUsersForObject:(nonnull DAOConversation*)conversation
                   withProgress:(nullable PTCLProgressBlock)progressBlock
                 andBlock:(nullable PTCLConversationBlockVoidNSArrayDAOUserNSUIntegerNSUIntegerNSErrorContinue)block
              andUpdateBlock:(nullable PTCLConversationBlockVoidNSArrayDAOUserNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker doLoadUsersForObject:conversation
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

- (void)doLoadObjectsWithProgress:(nullable PTCLProgressBlock)progressBlock
                         andBlock:(nullable PTCLConversationBlockVoidNSArrayDAOConversationNSUIntegerNSUIntegerNSErrorContinue)block
                   andUpdateBlock:(nullable PTCLConversationBlockVoidNSArrayDAOConversationNSUIntegerNSUIntegerNSError)updateBlock
{
    if (self.nextConversationWorker)
    {
        [self.nextConversationWorker doLoadObjectsWithProgress:progressBlock
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
