//
//  NSBundle+StaticLibraryBundle.m
//  StaticLibrary
//
//  Created by Bill Williams on 18.06.14.
//  Copyright (c) 2014 A Small Teapot. All rights reserved.
//

#import "NSBundle+StaticLibraryBundle.h"


/// Dummy class to enable resource bundle loading in test target.
@interface _ASTBundle : NSBundle
@end


@implementation _ASTBundle
@end


@implementation NSBundle (StaticLibraryBundle)

+ (instancetype)staticLibraryBundle {
    static NSBundle *staticLibraryBundle;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL *bundleURL = [[self bundleForClass:[_ASTBundle class]] URLForResource:@"StaticLibraryResources" withExtension:@"bundle"];
        staticLibraryBundle = [self bundleWithURL:bundleURL];
    });
    return staticLibraryBundle;
}

@end
