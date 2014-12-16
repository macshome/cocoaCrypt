//
//  CryptogramSolverStructTests.swift
//  CocoaCrypt
//
//  Created by Josh Wisenbaker on 12/16/14.
//  Copyright (c) 2014 Josh Wisenbaker. All rights reserved.
//

import XCTest


class CryptogramSolverStructTests: XCTestCase {

    var testSolverStruct: CryptogramSolverStruct!
    var testCryptogram = Cryptogram(cipherText: "CIPHER TEXT")
    var testAnalyzer: CipherAnalyzer!

    override func setUp() {
        testAnalyzer = CipherAnalyzer(cryptogram: testCryptogram)
        testSolverStruct = CryptogramSolverStruct(fromCipherAnalyzer: testAnalyzer)
    }

    func testSolverStructInit() {
        XCTAssert(testSolverStruct != nil , "Could not init test solver struct")
    }

    func testFailableStructInit() {
        testAnalyzer.cryptogram?.hasGeneratedWordList = false
        testSolverStruct = CryptogramSolverStruct(fromCipherAnalyzer: testAnalyzer)
        XCTAssertFalse(testSolverStruct != nil, "We should not be able to init the struct if the Cryptogram hasn't been analyzed")
        
    }
    
    
}