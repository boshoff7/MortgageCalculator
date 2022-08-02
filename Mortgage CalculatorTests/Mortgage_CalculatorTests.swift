//
//  Mortgage_CalculatorTests.swift
//  Mortgage CalculatorTests
//
//  Created by Chris Boshoff on 2022/08/02.
//

import XCTest
// Import project into test
@testable import Mortgage_Calculator

class Mortgage_CalculatorTests: XCTestCase {
    
    // Create a var for the class you want to test (force unwrap so i dont have to provide initializers)
    var calculator: Calculator!
    
    // i want the setup method without the class keyword (It does not throw)
    override func setUp() {
        // Initialize the class here, when we start every new test
        calculator = Calculator()
    }
    
    // this one clears up after each method instead of after the whole test
    override func tearDown() {
        // initialize after every test and before next test
        calculator = nil
    }
    
    // func name must start with test
    func testCalculate() {
        // Given - arrange
        var expected: Double = 0.0
        
        // When - act
        expected = calculator.calculate(price: 100, deposit: 10, interest: 10, loanTerm: 10)
        
        // Then - assert, wth message
        XCTAssert(expected == 1.1893566319358573, "this should be 1.1893566319358573")
    }
    
    func testInterestOne() {
        var expected: Double = 0.0
        
        expected = calculator.interestOne(interest: 10, loanTerm: 5)
        
        XCTAssert(expected == 1.6453089347785854, "this should be 1.6453089347785854")
        
    }
    
    func testInterestTwo() {
        var expected: Double = 0.0
        
        expected = calculator.interestTwo(interest: 10, loanTerm: 5)
        
        // other XCTAssert
        XCTAssert(expected == 0.6453089347785854, "this should be 0.6453089347785854")
        XCTAssertTrue(expected == 0.6453089347785854)
        XCTAssertEqual(expected, 0.6453089347785854)
    }
    
   
    
    
    
    
    
    
    override func setUpWithError() throws {
        // Code we want to run before every test
    }

    override func tearDownWithError() throws {
        // Code we want to run after every test
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
