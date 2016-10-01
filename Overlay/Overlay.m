//
//  Overlay.m
//  Overlay
//
//  Created by callum taylor on 06/09/2015.
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "Overlay.h"
#import <substrate.h>


MSHookInterface(SpringBoard, OverlayProxy, NSObject);

@implementation Overlay

- (void)createUI {
    UIView *rootView = [[objc_getClass("FBSceneManager") sharedInstance] _rootWindowForDisplay:[objc_getClass("FBDisplayManager") mainDisplay]];
    UIButton *testbut = [[UIButton alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    [rootView addSubview:testbut];
}

@end


@implementation OverlayProxy


-(void)applicationDidFinishLaunching:(id)application {
    [MSSelf applicationDidFinishLaunching:application];
    
    Overlay *overlay = [Overlay new];
    [overlay createUI];
}

@end