//
//  Anagram.h
//  Assignemnt2ARC
//
//  Created by Christopher Katnic on 1/30/15.
//  Copyright (c) 2015 Christopher Katnic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Anagram : NSObject
@property NSString* key;
@property NSMutableArray* listOfWordsInSet;


- (instancetype)initWithWord:(NSString *)word;
- (void) printKey;
- (BOOL) addWord: (NSString*) word;
- (int) countW;
@end
