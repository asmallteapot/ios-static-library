//
//  StaticLibraryTests.m
//  StaticLibraryTests
//
//  Created by Bill Williams on 18.06.14.
//  Copyright (c) 2014 A Small Teapot. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSBundle+StaticLibraryBundle.h"


@interface StaticLibraryTests : XCTestCase
@end


@implementation StaticLibraryTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}


- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testResourcesBundle {
    XCTAssertNotNil([NSBundle staticLibraryBundle], @"Resources bundle should be accessible through category method.");
}

@end
