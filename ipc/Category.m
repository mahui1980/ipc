//
//  Category.m
//  ipc
//
//  Created by Mahmood1 on 9/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Category.h"

@implementation Category
@synthesize cid = _cid, name = _name, desc = _desc, imageName = _imageName;

-(id) init
{
	if (self = [super init]) {
		_cid = nil;
		_name = nil;
		_desc = nil;
        _image = nil;
	}
	return self;
}

-(id) initWithId:(NSString *)strId
            name:(NSString *)strName
     description:(NSString *)strDescription
    andImageName:(NSString *)strImage{
    if (self = [super init]) {
        _cid = strId;
        _name = strName;
        _desc = strDescription;
        _image = strImage;
	}
	return self;
}

-(void) dealloc
{		
	[_cid release];
    [_name release];
    [_desc release];
    [_image release];
	[super dealloc]; 
}

@end
