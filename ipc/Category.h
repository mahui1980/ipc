//
//  Category.h
//  ipc
//
//  Created by Mahmood1 on 9/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Category : NSObject {
    NSString* _cid;
    NSString* _name;
    NSString* _desc;
    NSString* _imageName;
}

@property (nonatomic, retain) NSString *cid;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *desc;
@property (nonatomic, retain) NSString *imageName;

- (id) initWithId:(NSString*)strId name:(NSString*)strName description:(NSString*)strDescription andImageName:(NSString*)strImageName;

@end