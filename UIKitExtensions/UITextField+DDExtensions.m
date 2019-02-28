//
//  UITextField+DDExtensions.m
//  UIKitExtensions
//
//  Copyright © 2019 dashdevs.com. All rights reserved.
//

#import "UITextField+DDExtensions.h"

@implementation UITextField (DDCursor)

- (void)dd_moveCursorToLocation:(NSInteger)location {
    UITextPosition *position = [self positionFromPosition:self.beginningOfDocument offset:location];
    self.selectedTextRange = position ? [self textRangeFromPosition:position toPosition:position] : nil;
}

@end
