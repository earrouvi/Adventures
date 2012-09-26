//
//  XMLParser.m
//  Adventures
//
//  Created by Renard on 25/09/12.
//  Copyright (c) 2012 Renard. All rights reserved.
//

#import "XMLParser.h"

@implementation XMLParser

- (id)init {
    self = [super init];
    // filepath construction
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSString *libraryDirectory = [paths objectAtIndex:0];
    NSString *file = [libraryDirectory stringByAppendingPathComponent:@"tableaux.xml"];
    NSData *data = [NSData dataWithContentsOfFile: file];
    NSError *error;
    
    // reading
    DDXMLDocument *doc = [[DDXMLDocument alloc] initWithData:data options:DDXMLDocumentXMLKind error:&error];
    root = [doc rootElement];
    return self;
}

- (NSString*)readDecor {
    return [[((DDXMLElement*)[root childAtIndex:tabIndex]) attributeForName:@"decor"] stringValue];
}

- (NSArray*)readRenardXY {
    int x = [[[((DDXMLElement*)[root childAtIndex:tabIndex]) attributeForName:@"renardX"] stringValue] intValue];
    int y = [[[((DDXMLElement*)[root childAtIndex:tabIndex]) attributeForName:@"renardY"] stringValue] intValue];
    NSArray *arr = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:x], [NSNumber numberWithInt:y], nil];
    return arr;
}

@end
