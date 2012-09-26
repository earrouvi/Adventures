//
//  Renard.m
//  Adventures
//
//  Created by Renard on 25/09/12.
//  Copyright (c) 2012 Renard. All rights reserved.
//

#import "Renard.h"

@implementation Renard

- (id)initWithImage:(UIImage*)im
{
    self = [super initWithImage:im];
    if (self) {
        // Initialization code
        [self setFrame:CGRectMake(0, 0, 50, 50)];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    CGContextFillRect(context, self.frame);
}
 */


@end
