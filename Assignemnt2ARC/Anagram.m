//
//  Anagram.m
//  Assignemnt2ARC
//
//  Created by Christopher Katnic on 1/30/15.
//  Copyright (c) 2015 Christopher Katnic. All rights reserved.
//

#import "Anagram.h"
#import "NSString+codeWordExtension.h"
@implementation Anagram


#pragma mark - Printkey

- (void)printKey
{
    NSLog(@"My key is %@", _key);
}

 #pragma mark - Initialize with specific Value
- (instancetype)initWithWord:(NSString *)word
{
    self = [super init];
    if (self)
    {
        _key = [word codeword];
        _listOfWordsInSet = [[NSMutableArray alloc] init];
        [_listOfWordsInSet addObject:word];
    }
    return self;
}

 #pragma mark - Add word to array
-(BOOL) addWord:(NSString *) word
{
    if( [_key compare: [word codeword]] == NSOrderedSame)
    {
              
        [_listOfWordsInSet addObject:word];
        return YES;
    }
    else
    {
        return NO;
    }
    
    
    
    
}

-(int) countW
{
    return (int)[_listOfWordsInSet count];
}




@end
