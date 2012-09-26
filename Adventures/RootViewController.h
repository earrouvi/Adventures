//
//  RootViewController.h
//  Adventures
//
//  Created by Renard on 25/09/12.
//  Copyright (c) 2012 Renard. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableauViewController.h"

@interface RootViewController : UIViewController <TableauViewControllerDelegate>

- (void)startStory;

@end
