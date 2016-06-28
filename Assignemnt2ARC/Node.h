//
//  Node.h
//  Assignemnt2ARC
//
//  Created by Christopher Katnic on 1/31/15.
//  Copyright (c) 2015 Christopher Katnic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Anagram.h"

@interface Node : NSObject

@property Node * nextNode;
@property Anagram * storedAnagram;

@end
