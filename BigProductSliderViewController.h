//
//  BigProductSliderViewController.h
//  ipc
//
//  Created by SaRy on 8/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BigProductSliderViewController : UIViewController{
    UIScrollView *productBigSlider;
}

- (void)revealDetails:(id)sender;
- (void)gotoDetails:(id)sender;
@end