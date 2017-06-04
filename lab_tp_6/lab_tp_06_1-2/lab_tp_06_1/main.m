//
//  main.m
//  lab_tp_06_1
//
//  Created by Admin  on 01.06.17.
//  Copyright © 2017 Admin . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Analyser.h"
int main(int argc, const char * argv[]) {
    Analyser *analyser = [[Analyser alloc] init];
    NSString *inputString = @"arr arr arr baa baa ess ess rad rad rad rad y y pqi o";
    [analyser foo:inputString];
    NSArray *words = [inputString componentsSeparatedByString:@" "];
    NSMutableDictionary *d1 = [NSMutableDictionary dictionaryWithCapacity:2];
    
    for(NSString* word in words)
    {
        NSNumber *repetitions = [d1 valueForKey:word];
        if(!repetitions)
        {
            [d1 setObject:[[NSNumber alloc] initWithLong:([repetitions integerValue] + 1)] forKey:word];
        }
        else
        {
            [d1 setObject:[NSNumber numberWithLong:([repetitions longValue] + 1)]  forKey:word];
        }
  
    }
    
    NSArray*sp = [d1 keysSortedByValueUsingComparator:^(id obj1 ,id obj2){
        return [obj2 compare:obj1];}];
    
    NSMutableArray *players = [NSMutableArray arrayWithCapacity:0];
    for (NSString *p in sp) [players addObject:@{ @"Word":p, @"count":d1[p] }];

    for(int i = 0;i < 5;i++)
    {
        NSLog(@"%@",players[i]);

    }
         return 0;
}
