//
//  TableauViewController.h
//  Aventures
//
//  Created by Renard on 24/09/12.
//  Copyright (c) 2012 Renard. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Renard, TableauViewController;

@protocol TableauViewControllerDelegate <NSObject>

- (void)didGo:(TableauViewController*)tab toTab:(int)index;

- (void)didHitBack;

@end

@interface TableauViewController : UIViewController {

    UIImage *decor;
    Renard *renard;
    
    id<TableauViewControllerDelegate> delegate;
    
}

@property id<TableauViewControllerDelegate>delegate;

- (id)initWithID:(int)index;
- (void)goToTab:(id)sender;
- (void)exitToMenu;

@end
