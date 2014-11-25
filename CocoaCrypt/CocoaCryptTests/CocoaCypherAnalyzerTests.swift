//
//  CocoaCypherAnalyzerTests.swift
//  CocoaCypherAnalyzerTests
//
//  Created by Josh Wisenbaker on 11/24/14.
//  Copyright (c) 2014 Josh Wisenbaker. All rights reserved.
//

import Cocoa
import XCTest

class CocoaCypherAnalyzerTests: XCTestCase {

    let analyzer = CypherAnalyzer()
    let cypherText = "Ubty lzm vz dy xzq j kzg dyrtqadtu, D rbdyn j vzzs rbdyv rz jen de dx rbtl tatq oqtee pbjqvte."

    func testCanInitAypherAnalyzer() {

        XCTAssertNotNil(analyzer, "Could not init the CypherAnalyzer!")
    }

    func testCanSetCypherTextString() {
        analyzer.cypherText = cypherText
        XCTAssert(analyzer.cypherText == cypherText, "Didn't find expected string. Found: \(analyzer.cypherText)")
    }

    func testFrequencyAnalysis() {
        analyzer.cypherText = cypherText
        let frequencyAnalysisResults = analyzer.frequencyAnalysis()
        let qResult = frequencyAnalysisResults["q"]
        XCTAssert(qResult == 5, "Found the wrong number of the letter q. Expected: 5, Found: \(qResult)")
    }

    func testInputSafety() {
        analyzer.cypherText = " . .    ,,   #  42"
        let frequencyAnalysisResults = analyzer.frequencyAnalysis()
        for result in frequencyAnalysisResults.values {
            if result != 0 {
                XCTFail("Found a result for a letter where there should be none")
            }
        }
    }


    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measureBlock() {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
