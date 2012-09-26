//
//  TableauViewController.m
//  Aventures
//
//  Created by Renard on 24/09/12.
//  Copyright (c) 2012 Renard. All rights reserved.
//

#import "TableauViewController.h"
#import "Renard.h"
#import "XMLParser.h"

@implementation TableauViewController

@synthesize delegate;

- (id)initWithID:(int)index {
    self = [super init];
    self.navigationItem.hidesBackButton = YES;

    if (index==0) {
        [self.view setBackgroundColor:[UIColor greenColor]];
    } else {
        [self.view setBackgroundColor:[UIColor blueColor]];
    }
    
    // installer le parser xml
    XMLParser *parser = [[XMLParser alloc] init];
    
    // init du renard
    renard = [[Renard alloc] initWithImage:[UIImage imageNamed:@"grenavatar.jpg"]];
    [renard setFrame:CGRectMake(500, 600, 50, 50)];
    [self.view addSubview:renard];
    
    UIButton *butt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [butt setFrame:CGRectMake(200, 200, 60, 40)];
    [butt setTitle:@"Next" forState:UIControlStateNormal];
    [butt addTarget:self action:@selector(goToTab:) forControlEvents:UIControlEventTouchUpInside];
    [butt setTag:1];
    [self.view addSubview:butt];
    
    UIButton *butt2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [butt2 setFrame:CGRectMake(10, 10, 60, 40)];
    [butt2 setTitle:@"Exit" forState:UIControlStateNormal];
    [butt2 addTarget:self action:@selector(exitToMenu) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:butt2];
    return self;
}

- (void)goToTab:(id)sender {
    int index = ((UIButton*)sender).tag;
    [delegate didGo:self toTab:index];
}

- (void)exitToMenu {
    [delegate didHitBack];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
