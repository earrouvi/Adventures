//
//  XMLParser.h
//  Adventures
//
//  Created by Renard on 25/09/12.
//  Copyright (c) 2012 Renard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDXML.h"

@interface XMLParser : NSObject {
    
    //DDXMLDocument *doc;
    DDXMLElement *root;
    int tabIndex;
    
}

- (id)init;
- (NSString*)readDecor;
- (NSArray*)readRenardXY;

@end
