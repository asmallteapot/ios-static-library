//
//  NSBundle+StaticLibraryBundle.m
//  StaticLibrary
//
//  Created by Bill Williams on 18.06.14.
//  Copyright (c) 2014 A Small Teapot. All rights reserved.
//

#import "NSBundle+StaticLibraryBundle.h"


@implementation NSBundle (StaticLibraryBundle)

+ (instancetype)staticLibraryBundle {
    static NSBundle *staticLibraryBundle;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL *staticLibraryBundleURL = [[self mainBundle] URLForResource:@"StaticLibraryResources" withExtension:@"bundle"];
        staticLibraryBundle = [self bundleWithURL:staticLibraryBundleURL];
    });
    return staticLibraryBundle;
}

@end
