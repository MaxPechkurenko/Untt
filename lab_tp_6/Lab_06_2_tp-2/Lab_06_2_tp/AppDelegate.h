//
//  AppDelegate.h
//  Lab_06_2_tp
//
//  Created by Admin  on 02.6.17.
//  Copyright © 2017 Admin . All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

