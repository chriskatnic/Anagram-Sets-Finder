//
//  main.m
//  Assignemnt2ARC
//
//  Created by Christopher Katnic on 1/30/15.
//  Copyright (c) 2015 Christopher Katnic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Anagram.h"
#import "NSString+codeWordExtension.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDate *start = [NSDate date];
        char y[50];
        NSString *converted;
        FILE * inFile;
        inFile = fopen("/Users/Chris/Documents/Objective-c/Assignemnt2ARC/Assignemnt2ARC/words.txt", "r");
        
        
        Anagram *one = [[Anagram alloc] initWithWord:@"one"];
        Anagram *two = [[Anagram alloc] initWithWord:@"otw"];
        NSMutableDictionary *anagramDictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys: one,@"eno",
                                                                                                        two, @"otw",
                                                                                                        nil];
        
        int highestKey = 0; NSString* highestCodeword = [[NSString alloc] init];
        
        while(fscanf(inFile, "%s", y)!= EOF)
        {
            
            converted = [NSString stringWithCString:y encoding:NSUTF8StringEncoding];
            
            
            
            if([anagramDictionary objectForKey:[converted codeword]] != nil)
            {
                [[anagramDictionary objectForKey:[converted codeword]] addWord:converted];
                if([[anagramDictionary objectForKey:[converted codeword]] countW] > highestKey)
                {
                    highestCodeword = [converted codeword];
                    highestKey = [[anagramDictionary objectForKey:[converted codeword]] countW];
                }
            }
            
            
            
            else
            {
                Anagram * temp = [[Anagram alloc] initWithWord:converted];
                [anagramDictionary setObject:temp forKey:[converted codeword]];
            }
            
        }
        
        
        
        NSLog(@"%@", [[anagramDictionary objectForKey:highestCodeword] listOfWordsInSet] );
        NSLog(@"Highest Key amount %i", highestKey);
        
        fclose(inFile);
        NSTimeInterval end = [start timeIntervalSinceNow];
        NSLog(@"runtime: %f", end);
        
        
    }
    return 0;
}
