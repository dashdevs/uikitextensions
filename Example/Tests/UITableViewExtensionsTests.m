//
//  UITableViewExtensionsTests.m
//  UIKitExtensionTests
//
//  Copyright © 2018 dashdevs.com. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UITableView+DDSelection.h"

@interface UITableViewExtensionsTests : XCTestCase <UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSDictionary <NSNumber *, NSArray *> *data;

@end

@implementation UITableViewExtensionsTests

- (void)setUp {
    [super setUp];
    
    self.data = @{@0 : @[@"row1", @"row2", @"row3"],
                  @1 : @[@"row4", @"row5", @"row6", @"row7"]};
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.tableView.dataSource = self;
    self.tableView.allowsMultipleSelection = YES;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    [self.tableView reloadData];
    [self.tableView layoutIfNeeded];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSelectAllRows {
    NSUInteger allRowsCount = 0;
    
    for (NSArray *data in self.data.allValues) {
        allRowsCount += data.count;
    }
    
    [self.tableView dd_selectAllRowsAnimated:NO];
    
    XCTAssertEqual(allRowsCount, self.tableView.indexPathsForSelectedRows.count);
}

- (void)testSelectRowsAtIndexPaths {
    NSIndexPath *indexPath1 = [NSIndexPath indexPathForRow:1 inSection:0];
    NSIndexPath *indexPath2 = [NSIndexPath indexPathForRow:2 inSection:0];
    [self.tableView dd_selectRowsAtIndexPaths:@[indexPath1, indexPath2] animated:NO];
    XCTAssertEqual(self.tableView.indexPathsForSelectedRows.count, 2);
    XCTAssertEqual(self.tableView.indexPathsForSelectedRows[0], indexPath1);
    XCTAssertEqual(self.tableView.indexPathsForSelectedRows[1], indexPath2);
    
    NSIndexPath *indexPath3 = [NSIndexPath indexPathForRow:3 inSection:1];
    [self.tableView dd_selectRowsAtIndexPaths:@[indexPath3] animated:NO];
    XCTAssertEqual(self.tableView.indexPathsForSelectedRows.count, 3);
    XCTAssertEqual(self.tableView.indexPathsForSelectedRows[2], indexPath3);
}

- (void)testDeselectAllRows {
    [self.tableView dd_selectAllRowsAnimated:NO];
    [self.tableView dd_deselectAllRowsAnimated:NO];
    XCTAssertNil(self.tableView.indexPathsForSelectedRows);
}

- (void)testDeselectRowsAtIndexPaths {
    NSIndexPath *indexPath1 = [NSIndexPath indexPathForRow:1 inSection:0];
    NSIndexPath *indexPath2 = [NSIndexPath indexPathForRow:2 inSection:0];

    [self.tableView dd_selectRowsAtIndexPaths:@[indexPath1, indexPath2] animated:NO];
    [self.tableView dd_deselectRowsAtIndexPaths:@[indexPath1] animated:NO];
    XCTAssertEqual(self.tableView.indexPathsForSelectedRows.count, 1);
    XCTAssertEqual(self.tableView.indexPathsForSelectedRows.firstObject, indexPath2);
    
    [self.tableView dd_deselectRowsAtIndexPaths:@[indexPath2] animated:NO];
    XCTAssertNil(self.tableView.indexPathsForSelectedRows);
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.data.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.data[@(section)].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.textLabel.text = self.data[@(indexPath.section)][indexPath.row];
    return cell;
}

@end
