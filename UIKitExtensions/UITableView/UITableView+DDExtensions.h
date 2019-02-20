//
//  UITableView+DDSelection.h
//  UIKitExtensions
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (DDExtensions)

/**
 Allows to select all rows in table

 @param animated Specify YES if you want to animate the change of selection
 */
- (void)dd_selectAllRowsAnimated:(BOOL)animated;

/**
 Selects specified rows in table

 @param indexPaths An index path array locating the rows in table
 @param animated Specify YES if you want to animate the change of selection
 */
- (void)dd_selectRowsAtIndexPaths:(nonnull NSArray *)indexPaths animated:(BOOL)animated;

/**
 Deselects all rows in table

 @param animated Specify YES if you want to animate the change of selection
 */
- (void)dd_deselectAllRowsAnimated:(BOOL)animated;

/**
 Deselects specified rows in table

 @param indexPaths An index path array locating the rows in table
 @param animated Specify YES if you want to animate the change of selection
 */
- (void)dd_deselectRowsAtIndexPaths:(nonnull NSArray *)indexPaths animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
