//
//  UnitTestTests.swift
//  UnitTestTests
//
//  Created by Ruhsane Sawut on 4/8/19.
//  Copyright © 2019 ruhsane. All rights reserved.
//

import XCTest
@testable import UnitTest

class UnitTestTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

    // Test 1
    func testTitle() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateInitialViewController() as! ViewController
        vc.viewDidLoad()
        
        XCTAssertEqual("Hello World", vc.title)
    }
    
    // Test 2
    func testVowelsInString() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateInitialViewController() as! ViewController
        let result = vc.vowelsInAString(string: "This should have seven")
        XCTAssertEqual(result, 7)
    }
    
    //Test 3
    func testMakeTitle() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateInitialViewController() as! ViewController
        let result = vc.makeTitle(string: "wtf is this")
        XCTAssertEqual(result, "Wtf Is This")
    }
    
    // test 4
    func testPlaceholder() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateInitialViewController() as! ViewController
        vc.viewDidLoad()
        let ph = vc.textField.placeholder
        XCTAssertEqual(ph, "placeholder")
        
    }
}
