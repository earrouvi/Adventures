//
//  AppDelegate.h
//  Adventures
//
//  Created by Renard on 25/09/12.
//  Copyright (c) 2012 Renard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UINavigationController *navigationController;
}

@property (strong, nonatomic) UINavigationController *navigationController;
@property (strong, nonatomic) UIWindow *window;

@end
