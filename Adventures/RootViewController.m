//
//  RootViewController.m
//  Adventures
//
//  Created by Renard on 25/09/12.
//  Copyright (c) 2012 Renard. All rights reserved.
//

#import "RootViewController.h"

@implementation RootViewController

- (id)init {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        // Custom initialization
        [self.view setBackgroundColor:[UIColor whiteColor]];
        [self setTitle:@"Les Aventures de Renard"];
        
        UIButton *butt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [butt setFrame:CGRectMake(200, 200, 60, 40)];
        [butt setTitle:@"Start!" forState:UIControlStateNormal];
        [butt addTarget:self action:@selector(startStory) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:butt];
    }
    return self;
}

- (void)startStory {
    TableauViewController *tab0 = [[TableauViewController alloc] initWithID:0];
    tab0.delegate = self;
    [self.navigationController pushViewController:tab0 animated:YES];
}

#pragma mark Tableau delegate

- (void)didGo:(TableauViewController *)tab toTab:(int)index {
    //[self.navigationController popViewControllerAnimated:YES];
    TableauViewController *nextTab = [[TableauViewController alloc] initWithID:index];
    nextTab.delegate = self;
    [self.navigationController pushViewController:nextTab animated:YES];
}

- (void)didHitBack {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

/*
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
 */

@end
