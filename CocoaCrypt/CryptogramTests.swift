//
//  CryptogramTests.swift
//  CocoaCrypt
//
//  Created by Josh Wisenbaker on 11/26/14.
//  Copyright (c) 2014 Josh Wisenbaker. All rights reserved.
//

import XCTest


class CryptogramTests: XCTestCase {

    let testCryptogram = Cryptogram(cipherText: "CIPHER TEXT")

    override func setUp() {
        testCryptogram.plainText = "plain text"
        testCryptogram.frequencyAnalysis = ["A" : 1]
        testCryptogram.cipherTable = ["A" : "B", "Z" : nil]
    }

    func testCryptogramProperties() {

        XCTAssert(testCryptogram.cipherText == "CIPHER TEXT", "Did not find expected cipherText. Found: \(testCryptogram.cipherText)")

        XCTAssert(testCryptogram.plainText == "plain text", "Did not find expected plainText. Found: \(testCryptogram.plainText)")

        XCTAssert(testCryptogram.frequencyAnalysis! == ["A" : 1], "Did not find expected frequencyAnalysis. Found: \(testCryptogram.frequencyAnalysis)")

        println(testCryptogram.cipherTable)

        XCTAssert(testCryptogram.cipherTable != nil, "Foo")
    }
}