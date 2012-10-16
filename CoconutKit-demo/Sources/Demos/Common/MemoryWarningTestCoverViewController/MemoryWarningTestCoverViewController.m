//
//  MemoryWarningTestCoverViewController.m
//  CoconutKit-demo
//
//  Created by Samuel Défago on 2/15/11.
//  Copyright 2011 Hortis. All rights reserved.
//

#import "MemoryWarningTestCoverViewController.h"

@interface MemoryWarningTestCoverViewController ()

- (void)close:(id)sender;

@end

@implementation MemoryWarningTestCoverViewController

#pragma mark Object creation and destruction

- (void)releaseViews
{
    [super releaseViews];
    
    self.closeBarButtonItem = nil;
}

#pragma mark Accessors and mutators

@synthesize closeBarButtonItem = m_closeBarButtonItem;

#pragma mark View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.closeBarButtonItem.target = self;
    self.closeBarButtonItem.action = @selector(close:);
}

#pragma mark Orientation management

- (BOOL)shouldAutorotate
{
    if (! [super shouldAutorotate]) {
        return NO;
    }
    
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return [super supportedInterfaceOrientations] & HLSInterfaceOrientationMaskAll;
}

#pragma mark Event callbacks

- (void)close:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

#pragma mark Localization

- (void)localize
{
    [super localize];
    
    self.title = @"MemoryWarningTestCoverViewController";
    self.closeBarButtonItem.title = NSLocalizedString(@"Close", @"Close");
}

@end
