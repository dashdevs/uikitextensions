//
//  UITableView+DDSelection.m
//  UIKitExtensions
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import "UITableView+DDSelection.h"

@implementation UITableView (DDSelection)

- (void)dd_selectAllRowsAnimated:(BOOL)animated {
    for (NSInteger section = 0; section < self.numberOfSections; ++section) {
        for (NSInteger row = 0; row < [self numberOfRowsInSection:section]; ++row) {
            [self selectRowAtIndexPath:[NSIndexPath indexPathForRow:row inSection:section] animated:animated scrollPosition:UITableViewScrollPositionNone];
        }
    }
}

- (void)dd_selectRowsAtIndexPaths:(NSArray *)indexPaths animated:(BOOL)animated {
    for (NSIndexPath *indexPath in indexPaths) {
        [self selectRowAtIndexPath:indexPath animated:animated scrollPosition:UITableViewScrollPositionNone];
    }
}

- (void)dd_deselectAllRowsAnimated:(BOOL)animated {
    [self dd_deselectRowsAtIndexPaths:self.indexPathsForSelectedRows animated:animated];
}

- (void)dd_deselectRowsAtIndexPaths:(NSArray *)indexPaths animated:(BOOL)animated {
    for (NSIndexPath *indexPath in indexPaths) {
        [self deselectRowAtIndexPath:indexPath animated:animated];
    }
}

@end
