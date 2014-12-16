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

    let cipherText = "Ubty lzm vz dy xzq j kzg dyrtqadtu, D rbdyn j vzzs rbdyv rz jen de dx rbtl tatq oqtee pbjqvte."
    var testCryptogram: Cryptogram!
    var testAnalyzer: CipherAnalyzer!

    override func setUp() {
        testCryptogram = Cryptogram(cipherText: cipherText)
        testAnalyzer = CipherAnalyzer(cryptogram: testCryptogram)
    }

    func testCanInitCipherAnalyzer() {

        XCTAssertNotNil(testAnalyzer, "Could not init the CipherAnalyzer!")
    }

    func testFrequencyAnalysis() {
        testAnalyzer.frequencyAnalysis()
        let qResult = testAnalyzer.cryptogram?.frequencyAnalysis?["Q"]
        XCTAssert(qResult == 5, "Found the wrong number of the letter q. Expected: 5, Found: \(qResult!)")

        XCTAssert(testAnalyzer.cryptogram?.hasCompletedFrequencyAnalysis == true, "Completion flag not set on frequency analysis.")

        if let frequencyResults = testAnalyzer.cryptogram?.frequencyAnalysis? {
            for (key, value) in frequencyResults {
                if value == 0 {
                    XCTFail("There shouldn't be any 0 values in the frequency analysis and we found one.")
                }
            }
        }

    }



    func testFrequencyAnalyzerPerformance() {
        self.measureBlock() {
            self.testAnalyzer.frequencyAnalysis()
        }
    }

    func testWordList() {
        testAnalyzer.generateWordList()
        XCTAssertNotNil(testAnalyzer.cryptogram?.wordList, "Word list should not be nil")

        let firstResult = testAnalyzer.cryptogram?.wordList?["dyrtqadtu"]
        XCTAssert(firstResult == 9, "Found the wrong count of the word dyrtqadtu. Expected: 9, Found: \(firstResult!)")

        XCTAssert(testAnalyzer.cryptogram?.hasGeneratedWordList == true, "Completion flag not set on word list generator.")
    }
    
    
}
