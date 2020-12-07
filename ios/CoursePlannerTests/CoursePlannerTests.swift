//
//  CoursePlannerTests.swift
//  CoursePlannerTests
//
//  Created by Levi Nelson on 11/15/20.
//

@testable import CoursePlanner
import XCTest

class CoursePlannerTests: XCTestCase {

    func testGoodRegistration() {
            
            let account = Register(phone: "9492450909", password1: "ChickenPotPie", password2: "ChickenPotPie")
            
            XCTAssertTrue(account.isGoodRegistration())
            
        }
        
        func testDifferentPass() {
            let account = Register(phone: "9492450909", password1: "ChickenPoePie", password2: "ChickenPotPie")
            
            XCTAssertFalse(account.isGoodRegistration())
        }
        
        func testBadPhoneNumber() {
            let account = Register(phone: "949245", password1: "ChickenPotPie", password2: "ChickenPotPie")
            
            XCTAssertFalse(account.isGoodRegistration())
        }

}
