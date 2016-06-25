//
//  ISMCompressedList.m
//  ISMCompressList
//
//  Created by Mann, Isaiah on 6/22/16.
//  Copyright © 2016 Mann, Isaiah. All rights reserved.
//

#import "ISMCompressedList.h"

@implementation ISMCompressedList

// TODO: Add a method to extrapolate an int from an array modify it and save it again

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

- (NSInteger) count {
    int elementCount = 0;
    for (int i = 0; i < [self.reccurences count]; i++) {
        elementCount += [self.reccurences[i] integerValue];
    }
    return elementCount;
}

- (NSNumber *) compressionRatio {
    if ([self.internalList count] > 0) {
        return [NSNumber numberWithFloat:((float)[self count] / (float)[self.internalList count])];
    } else {
        return [NSNumber numberWithInt:0];
    }
}

- (instancetype) init {
    self.internalList = [[NSMutableArray alloc] init];
    self.reccurences = [[NSMutableArray alloc] init];
    return self;
}

@end
