//
//  FilterOptionsViewController.m
//  ipc
//
//  Created by Mahmood1 on 10/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FilterOptionsViewController.h"


@implementation FilterOptionsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    options = [[NSArray alloc] initWithObjects:@"Keyword", @"Types", @"Brands", @"Stores", @"Price", @"Sales", nil];
    optionTable = [[UITableView alloc] initWithFrame:self.view.frame];
    [optionTable setDelegate:self];
    [optionTable setDataSource:self];
    [self.view addSubview:optionTable];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

#pragma mark UITableView delegates
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [options count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    FilterOptionsViewController *filterDetail = [[FilterDetailsViewController alloc] initWithArray:options];
    
    [self.navigationController pushViewController:filterDetail animated:YES];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"optionrow"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"optionrow"];
    }
    cell.textLabel.text = [options objectAtIndex:indexPath.row];
    return cell;
}

@end