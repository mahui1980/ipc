    //
//  MyPopOverView.m
//  iPadTutorial
//
//  Created by Jannis Nikoy on 4/3/10.
//  Copyright 2010 Jannis Nikoy. All rights reserved.
//

#import "MyPopOverView.h"


@implementation MyPopOverView
@synthesize navController;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    FilterOptionsViewController *filterOptions = [[FilterOptionsViewController alloc] init];
    [navController.view setFrame:filterOptions.view.frame];
    [self.view setFrame:filterOptions.view.frame];
    [navController presentModalViewController:filterOptions animated:NO];
    [self.view addSubview:navController.view];
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    return YES;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
