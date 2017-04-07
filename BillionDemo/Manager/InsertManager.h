//
//  InsertManager.h
//  BillionDemo
//
//  Created by Pawan Jat on 06/04/17.
//  Copyright © 2017 47billion. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface InsertManager : NSObject
{
}

+(instancetype)sharedManager;
-(void)startManager;
-(void)stopManager;
-(void)showMessageInViewControler:(UIViewController *)viewController;
-(BOOL)isManagerRunning;

@end
