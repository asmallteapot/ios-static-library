//
//  NSBundle+StaticLibraryBundle.h
//  StaticLibrary
//
//  Created by Bill Williams on 18.06.14.
//  Copyright (c) 2014 A Small Teapot. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 Helper methods for StaticLibrary's resources bundle.
 */
@interface NSBundle (StaticLibraryBundle)
/// Returns a reference to the static library's resources bundle.
+ (instancetype)staticLibraryBundle;
@end
