//
//  Tdd1Tests.swift
//  Tdd1Tests
//
//  Created by Srikanth Kyatham on 11/22/24.
//

import XCTest
@testable import Tdd1



final class Tdd1Tests: XCTestCase {
    
    var objCalculator : Calculator?


    override func setUpWithError() throws {
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        objCalculator = Calculator()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        objCalculator = nil
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
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSumSuccess() {
        let result = objCalculator?.sum(1, 2)
        XCTAssertEqual(result, 3)
    }
    func testSumFailure() {
        let result = objCalculator?.sum(101, 2)
        XCTAssertNotEqual(result, 4)
    }
    func test_sum_of_two_negative_numbers() {
        let result = objCalculator?.sum(-1, -2)
        XCTAssertEqual(result, -3)
    }
    
    func test_sum_of_optional_numbers() {
        let result1 = objCalculator?.sum(1, nil)
        XCTAssertEqual(result1, 0)
        
        let result2 = objCalculator?.sum(nil, 1)
        XCTAssertEqual(result2, 0)
        
        let result3 = objCalculator?.sum(nil, nil)
        XCTAssertEqual(result3, 0)
    }
    func test_Subtraction_of_two_positive_numbers() {
        let result = objCalculator?.subtract(1, 2)
        XCTAssertEqual(result, -1)
    }
    func testSubtractionFailure() {
        let result = objCalculator?.subtract(101, 2)
        XCTAssertNotEqual(result, 4)
    }
    func testSubtractionOfTwoNegativeNumbers() {
        let result = objCalculator?.subtract(-3, -4)
        XCTAssertNotEqual(result, -1)
    }
    func testSubtractionOfOptionalNumbers() {
        let result1 = objCalculator?.subtract(nil, 5)
        XCTAssertEqual(result1,0)
    }
    func testMultiplicationOfTwoPositiveNumbers() {
        let result = objCalculator?.multiply(4,5)
        XCTAssertEqual(result, 20)
    }
    func testMultiplicationFailure() {
        let result = objCalculator?.multiply(101, 2)
        XCTAssertNotEqual(result, 4)
    }
    func testMultiplicationOfTwoNegativeNumbers() {
        let result = objCalculator?.multiply(-3, -4)
        XCTAssertEqual(result, 12)
    }
    func testMultiplicationOfPositiveAndNegativeNumbers() {
        let result = objCalculator?.multiply(4, -5)
        XCTAssertEqual(result, -20)
    }
    func testMultiplicationOfOptionalNumbers() {
        let result1 = objCalculator?.multiply(nil, 5)
        XCTAssertEqual(result1,0)
    }
    func testdivisionOfTwoPositiveNumbers() {
        let result = objCalculator?.divide(10, 2)
        XCTAssertEqual(result, 5)
    }
    func testdivisionFailure() {
        let result = objCalculator?.divide(101, 2)
        XCTAssertNotEqual(result, 4)
    }
    func testdivisionOfTwoNegativeNumbers() {
        let result = objCalculator?.divide(-8, -2)
        XCTAssertEqual(result, 4)
    }
    func testdivisionOfPositiveAndNegativeNumbers() {
        let result = objCalculator?.divide(10, -5)
        XCTAssertEqual(result, -2)
    }
    func testdivisionbyZero() {
        let result = objCalculator?.divide(10, 0)
        XCTAssertEqual(result, 0)
    }

}
