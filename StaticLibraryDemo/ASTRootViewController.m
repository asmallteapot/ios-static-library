//
//  ASTRootViewController.m
//  StaticLibraryDemo
//
//  Created by Bill Williams on 18.06.14.
//  Copyright (c) 2014 A Small Teapot. All rights reserved.
//

#import "ASTRootViewController.h"
#import <StaticLibrary/ASTLemongrabViewController.h>
#import <StaticLibrary/ASTXMLParser.h>


@interface ASTRootViewController ()
@property (strong, nonatomic) ASTXMLParser *XMLParser;

- (IBAction)showLemongrab:(id)sender;
@end


@implementation ASTRootViewController

- (void)awakeFromNib {
    [super awakeFromNib];
    self.XMLParser = [[ASTXMLParser alloc] init];
    NSLog(@"XML parser: %@", self.XMLParser);
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - IB Action
- (IBAction)showLemongrab:(id)sender {
    ASTLemongrabViewController *lemongrabVC = [[ASTLemongrabViewController alloc] init];
    [self.navigationController pushViewController:lemongrabVC animated:YES];
}

@end
