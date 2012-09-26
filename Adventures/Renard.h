//
//  Renard.h
//  Adventures
//
//  Created by Renard on 25/09/12.
//  Copyright (c) 2012 Renard. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RenardDelegate <NSObject>

@end

@interface Renard : UIImageView

- (id)initWithImage:(UIImage *)image;

@end
