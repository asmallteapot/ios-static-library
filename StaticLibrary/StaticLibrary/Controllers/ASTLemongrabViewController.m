//
//  ASTLemongrabViewController.m
//  StaticLibrary
//
//  Created by Bill Williams on 18.06.14.
//  Copyright (c) 2014 A Small Teapot. All rights reserved.
//

#import "ASTLemongrabViewController.h"
#import "NSBundle+StaticLibraryBundle.h"


@interface ASTLemongrabViewController ()
@end


@implementation ASTLemongrabViewController

- (instancetype)init {
    // Ensure the view controller is always loaded from its nib.
    return [self initWithNibName:NSStringFromClass([self class]) bundle:[NSBundle staticLibraryBundle]];
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Perform actions after object is initialized, but before the view loads.
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
