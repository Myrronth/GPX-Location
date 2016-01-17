//
//  GrunzeugUITests.swift
//  GrunzeugUITests
//
//  Created by Tobias Kreß on 02.11.15.
//  Copyright © 2015 Grunzeug. All rights reserved.
//

import XCTest

class GrunzeugUITests: XCTestCase {
    
    final func delay(seconds: NSTimeInterval) {
        let delayExpectation = expectationWithDescription("DELAY")
        dispatch_async(dispatch_get_global_queue(0, 0)) { () -> Void in
            NSThread.sleepForTimeInterval(seconds)
            delayExpectation.fulfill()
        }
        waitForExpectationsWithTimeout(seconds + 1, handler: nil)
    }
    
    func testScreenshots() {
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        
        delay(15)
    }
    
}
