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

    var testCryptogram: Cryptogram!

    let cipherText = "Ubty lzm vz dy xzq j kzg dyrtqadtu, D rbdyn j vzzs rbdyv rz jen de dx rbtl tatq oqtee pbjqvte."
    var testAnalyzer: CipherAnalyzer!

    override func setUp() {
        testCryptogram = Cryptogram(cipherText: cipherText)
        testAnalyzer = CipherAnalyzer(WithCipherText: testCryptogram)
    }

    func testCanInitCipherAnalyzer() {

        XCTAssertNotNil(testAnalyzer, "Could not init the CipherAnalyzer!")
    }

    func testFrequencyAnalysis() {
        testAnalyzer.frequencyAnalysis()
        let qResult = testAnalyzer.cryptogram?.frequencyAnalysis?["Q"]
        XCTAssert(qResult == 5, "Found the wrong number of the letter q. Expected: 5, Found: \(qResult)")
    } 

    func testFrequencyAnalyzerPerformance() {
        self.measureBlock() {
            self.testAnalyzer.frequencyAnalysis()
        }
    }

    
    
}
