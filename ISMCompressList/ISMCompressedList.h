//
//  ISMCompressedList.h
//  ISMCompressList
//
//  Created by Mann, Isaiah on 6/22/16.
//  Copyright © 2016 Mann, Isaiah. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ISMCompressedList : NSObject

@property NSMutableArray *internalList;
@property NSMutableArray *reccurences;

- (void) addElement:(NSObject*)element;
- (void) removeElement:(NSObject*)element;
- (NSInteger) count;
- (NSNumber*) compressionRatio;

@end
