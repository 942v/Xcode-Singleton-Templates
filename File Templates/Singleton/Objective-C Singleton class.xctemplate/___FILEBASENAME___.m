//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAMEASIDENTIFIER___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ : NSObject

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

static ___FILEBASENAMEASIDENTIFIER___ *SINGLETON = NULL;

static BOOL isFirstAccess = YES;

#pragma mark - Public Method

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        isFirstAccess = NO;
        SINGLETON = [[super allocWithZone:NULL] init];    
    });
    
    return SINGLETON;
}

#pragma mark - Life Cycle

+ (instancetype) allocWithZone:(NSZone *)zone {
    return [self sharedInstance];
}

+ (instancetype)copyWithZone:(struct _NSZone *)zone {
    return [self sharedInstance];
}

+ (instancetype)mutableCopyWithZone:(struct _NSZone *)zone {
    return [self sharedInstance];
}

- (instancetype)copy {
    return [[___FILEBASENAMEASIDENTIFIER___ alloc] init];
}

- (instancetype)mutableCopy {
    return [[___FILEBASENAMEASIDENTIFIER___ alloc] init];
}

- (instancetype) init {
    if(SINGLETON){
        return SINGLETON;
    }
    if (isFirstAccess) {
        [self doesNotRecognizeSelector:_cmd];
    }
    self = [super init];
    if (self) {

    }
    return self;
}



@end
