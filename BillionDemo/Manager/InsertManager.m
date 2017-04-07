
//
//  InsertManager.m
//  BillionDemo
//
//  Created by Pawan Jat on 06/04/17.
//  Copyright © 2017 47billion. All rights reserved.
//

#import "InsertManager.h"
#import "CustomView.h"

@interface InsertManager()

@property (nonatomic) BOOL isEnabled;

@end

@implementation InsertManager

+(instancetype)sharedManager{
    static InsertManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[[self class] alloc] init];
    });
    return sharedManager;
}

-(void)startManager{
    NSLog(@"Manager is running.");
    _isEnabled = true;
}

-(void)stopManager{
    NSLog(@"Manager is stopped....");
    _isEnabled = false;
}

-(BOOL)isManagerRunning{
    return _isEnabled;
}

-(void)showMessageInViewControler:(UIViewController *)viewController{
    if (_isEnabled) {
        NSBundle* frameworkBundle = [NSBundle bundleForClass:[self class]];
        CustomView *csView = [[frameworkBundle loadNibNamed:@"CustomView" owner:self options:nil] firstObject];
        csView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        [viewController.view addSubview:csView];
    }
}

@end
