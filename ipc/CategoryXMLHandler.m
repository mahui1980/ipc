//
//  CategoryXMLHandler.m
//  ipc
//
//  Created on 9/6/11.
//  Copyright 2011 OngSoft. All rights reserved.
//

#import "CategoryXMLHandler.h"


@implementation CategoryXMLHandler

-(id) initWithCategoryDict:(NSMutableDictionary *)categoryDict andCategoryArray:(NSMutableArray*)categoryArray{
    if (self = [super init]) {
        _categoryDict = categoryDict;
        _categoryArray = categoryArray;
        _count = [[NSNumber alloc] init];
    }
    return self;
}

-(id) initObjectAfterElementStarting:(NSString *)elementName{
    if ([elementName isEqualToString:@"categories"]){
        return _count;
    }
    if ([elementName isEqualToString:@"category"]) {
		_currentObject = [[Category alloc] init];
		return _currentObject;
	}
    if ([elementName isEqualToString:@"name"]
        || [elementName isEqualToString:@"description"]
        || [elementName isEqualToString:@"image"])
    {
        return _currentObject;
    }
	return nil;
}

-(void) afterElementStarting:(NSString *)elementName withAttributes:(NSDictionary *)attributeDict{
    if ([elementName isEqualToString:@"categories"]){
        [_count release];
        _count = [[NSNumber alloc] initWithInteger:[[attributeDict objectForKey:@"count"] intValue]];
    }
    if ([elementName isEqualToString:@"category"])
        _currentObject.cid = [attributeDict objectForKey:@"id"];
}

-(void) afterElementEnding:(NSString *)elementName{
    if ([elementName isEqualToString:@"category"]) {
        [_categoryDict setObject:_currentObject forKey:_currentObject.cid];
        [_categoryArray addObject:_currentObject];
		[_currentObject release];
		_currentObject = nil;
        [_chars release];
        _chars = nil;
	}
    if ([elementName isEqualToString:@"name"])
        _currentObject.name = _chars;
    if ([elementName isEqualToString:@"description"])
        _currentObject.desc = _chars;
    if ([elementName isEqualToString:@"image"])
        _currentObject.image = _chars;
}

-(NSString*) getWrappedRootNode
{
	return @"categories";
}

-(void) dealloc
{
    [_count release];
	[super dealloc];
}

@end
