//
//  KeychainTests.swift
//  KeychainTests
//
//  Created by Ruhsane Sawut on 4/29/19.
//  Copyright © 2019 ruhsane. All rights reserved.
//

import XCTest
@testable import Keychain
import KeychainSwift

class KeychainTestingTests: XCTestCase {
    
    // For all of the tests we will need an instance of KeychainSwift
    let keychain = KeychainSwift()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        keychain.set("value", forKey: "key")

    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    func testKeychainGet() {
        // Test if retrieving a value with Keychain works.
        let string = keychain.get("key")
        XCTAssertEqual(string, "value")
        
    }
    
    func testKeychainDelete() {
        // Test if deleting a value with Keychain works.
        keychain.delete("key")
        let get = keychain.get("key")
        XCTAssertEqual(get, nil)
        
    }
    
    func testKeychainUpdate() {
        // Test if updating a value with Keychain works, you will need an initial value and compare the new value with the old one.
        keychain.set("new", forKey: "key")
        let new = keychain.get("key")
        XCTAssertNotEqual(new, "value")
        XCTAssertEqual(new, "new")

    }
}
