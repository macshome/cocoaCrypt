//
//  CocoaCipherAnalyzerTests.swift
//  CocoaCipherAnalyzerTests
//
//  Created by Josh Wisenbaker on 11/24/14.
//  Copyright (c) 2014 Josh Wisenbaker. All rights reserved.
//

import Cocoa
import XCTest

class CocoaCipherAnalyzerTests: XCTestCase {

    let analyzer = CipherAnalyzer()
    let cipherText = "Ubty lzm vz dy xzq j kzg dyrtqadtu, D rbdyn j vzzs rbdyv rz jen de dx rbtl tatq oqtee pbjqvte."

    func testCanInitAypherAnalyzer() {

        XCTAssertNotNil(analyzer, "Could not init the CipherAnalyzer!")
    }

    func testFrequencyAnalysis() {
        let frequencyAnalysisResults = analyzer.frequencyAnalysisFor(cipherText)
        let qResult = frequencyAnalysisResults["Q"]
        XCTAssert(qResult == 5, "Found the wrong number of the letter q. Expected: 5, Found: \(qResult)")
    }

    func testInputSafety() {
        let frequencyAnalysisResults = analyzer.frequencyAnalysisFor(" . .    ,,   #  42")
        for result in frequencyAnalysisResults.values {
            if result != 0 {
                XCTFail("Found a result for a letter where there should be none")
            }
        }
    }

    func testFrequencyAnalyzerPerformance() {
        self.measureBlock() {
            let frequencyAnalysisResults = self.analyzer.frequencyAnalysisFor(self.cipherText)
        }
    }
    
}
