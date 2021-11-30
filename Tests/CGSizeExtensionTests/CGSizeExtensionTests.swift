import XCTest
@testable import CGSizeExtension

final class CGSizeExtensionTests: XCTestCase {
    
    private struct Constants {
        static var sizeWith: CGFloat = 10.0
        static var sizeHeight: CGFloat = 5.0
        static var aspectRatio: CGFloat = sizeWith / sizeHeight
        static var newAspectRatio: CGFloat = sizeHeight / sizeWith
    }
    
    let size = CGSize(width: Constants.sizeWith, height: Constants.sizeHeight)
    
    func testAspectRatio() throws {
        XCTAssertEqual(size.aspectRatio, Constants.aspectRatio)
    }
    
    func testUpdateWithAspectRatioNewHeight() throws {
        var updatedSsize = size.updateWithAspectRatio(newHeight: Constants.sizeHeight * 2)
        XCTAssertEqual(updatedSsize.height, Constants.sizeHeight * 2)
        XCTAssertEqual(updatedSsize.width, Constants.sizeWith * 2)
        
        updatedSsize = size.updateWithAspectRatio(Constants.newAspectRatio, newHeight: Constants.sizeWith)
        XCTAssertEqual(updatedSsize.height, Constants.sizeWith)
        XCTAssertEqual(updatedSsize.width, Constants.sizeHeight)
    }
    
    func testUpdateWithAspectRatioNewWidth() throws {
        var updatedSsize = size.updateWithAspectRatio(newWidth: Constants.sizeWith * 2)
        XCTAssertEqual(updatedSsize.height, Constants.sizeHeight * 2)
        XCTAssertEqual(updatedSsize.width, Constants.sizeWith * 2)
        
        updatedSsize = size.updateWithAspectRatio(Constants.newAspectRatio, newWidth: Constants.sizeHeight)
        XCTAssertEqual(updatedSsize.height, Constants.sizeWith)
        XCTAssertEqual(updatedSsize.width, Constants.sizeHeight)
    }
}
