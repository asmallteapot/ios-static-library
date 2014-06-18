//
//  ASTXMLParserTests.m
//  StaticLibrary
//
//  Created by Bill Williams on 18.06.14.
//  Copyright (c) 2014 A Small Teapot. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ASTXMLParser.h"


@interface ASTXMLParserTests : XCTestCase
@end


@implementation ASTXMLParserTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}


- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testExample {
    ASTXMLParser *XMLParser = [[ASTXMLParser alloc] init];
    XCTAssertNotNil(XMLParser, @"XML Parser should be created from inside test bundle.");
}

@end
