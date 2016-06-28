//
//  NSString+codeWordExtension.m
//  Assignemnt2ARC
//
//  Created by Christopher Katnic on 1/30/15.
//  Copyright (c) 2015 Christopher Katnic. All rights reserved.
//

#import "NSString+codeWordExtension.h"

@implementation NSString (codeWordExtension)


-(NSString*) codeword
{
    NSUInteger len = [self length];
    unichar *letters = (unichar*) calloc(sizeof(unichar), len);
    
    [self getCharacters:letters range:NSMakeRange(0, len)];
    
    qsort_b(letters, len, sizeof(unichar), ^(const void* l, const void*r)
            {
                return *(unichar*)l - *(unichar*)r;
            }
            );
    
    NSString* code = [NSString stringWithCharacters:letters length:len];
    
    free(letters);
    return code;
    
    
}

@end

