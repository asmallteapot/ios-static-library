//
//  ASTXMLParser.m
//  StaticLibrary
//
//  Created by Bill Williams on 18.06.14.
//  Copyright (c) 2014 A Small Teapot. All rights reserved.
//

#import "ASTXMLParser.h"
#import <libxml/tree.h>


@interface ASTXMLParser ()
@property (nonatomic) xmlEntitiesTablePtr entitiesTable;
@end


@implementation ASTXMLParser

- (instancetype)init {
    self = [super init];
    if (self) {
        self.entitiesTable = xmlCreateEntitiesTable();
    }
    return self;
}


- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p, entities table: %p (%d entries)>", NSStringFromClass([self class]), self, self.entitiesTable, xmlHashSize(self.entitiesTable)];
}

@end
