//
//  ISMCompressedOrderedList.m
//  ISMCompressList
//
//  Created by Mann, Isaiah on 6/22/16.
//  Copyright © 2016 Mann, Isaiah. All rights reserved.
//

#import "ISMCompressedOrderedList.h"

@implementation ISMCompressedOrderedList

// Adds to the end of the list
- (void) addElement:(NSObject *)element {
    if ([self.internalList containsObject:element]) {
        NSInteger index = [self.internalList indexOfObject:element];
        NSInteger count = [self.reccurences[index] integerValue];
        count++;
        self.reccurences[index] = [NSNumber numberWithInteger:count];
    } else {
        [self.internalList addObject:element];
        [self.reccurences addObject:[NSNumber numberWithInteger:1]];
        
    }
}

// Finds the first recurrence
- (void) removeElement:(NSObject *)element {
    if ([self.internalList containsObject:element]) {
        NSInteger index = [self.internalList indexOfObject:element];
        if ([self.reccurences[index] integerValue] == 1) {
            [self.reccurences removeObjectAtIndex:index];
            [self.internalList removeObjectAtIndex:index];
        } else {
            NSInteger count = [self.reccurences[index] integerValue];
            count--;
            self.reccurences[index] = [NSNumber numberWithInteger:count];
        }
    }
}


@end
