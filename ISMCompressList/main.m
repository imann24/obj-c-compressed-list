//
//  main.m
//  ISMCompressList
//
//  Created by Mann, Isaiah on 6/22/16.
//  Copyright © 2016 Mann, Isaiah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ISMCompressedList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ISMCompressedList *list = [[ISMCompressedList alloc] init];
        [list addElement:[NSNumber numberWithInteger:1]];
        [list addElement:[NSNumber numberWithInteger:1]];
        [list addElement:[NSNumber numberWithInteger:1]];
        [list addElement:[NSNumber numberWithInteger:1]];
        [list addElement:[NSNumber numberWithInteger:2]];
        [list addElement:[NSNumber numberWithInteger:3]];
        [list addElement:[NSNumber numberWithInteger:4]];
        [list addElement:[NSNumber numberWithInteger:5]];
        [list addElement:[NSNumber numberWithInteger:6]];
        [list addElement:[NSNumber numberWithInteger:7]];
        [list removeElement:[NSNumber numberWithInteger:1]];
        [list removeElement:[NSNumber numberWithInteger:1]];
        [list removeElement:[NSNumber numberWithInteger:7]];
        NSLog(@"The list contains %d elements and the compression ratio is %@", (int) [list count], [list compressionRatio]);
    }
    return 0;
}
