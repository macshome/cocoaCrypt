//
//  CryptogramSolverStruct.swift
//  CocoaCrypt
//
//  Created by Josh Wisenbaker on 12/16/14.
//  Copyright (c) 2014 Josh Wisenbaker. All rights reserved.
//

struct CryptogramSolverStruct {
    let cipherText: String!
    let plainText: String!
    let frequencyAnalysis: [String: Int]!
    let wordList: [String: Int]!
    var cipherTable: [String: String?]?

    init?(fromCipherAnalyzer inputAnalyzer: CipherAnalyzer) {

        if inputAnalyzer.cryptogram?.hasCompletedFrequencyAnalysis == true &&
            inputAnalyzer.cryptogram?.hasGeneratedWordList == true {
                cipherText = inputAnalyzer.cryptogram?.cipherText
                plainText = inputAnalyzer.cryptogram?.plainText
                frequencyAnalysis = inputAnalyzer.cryptogram?.frequencyAnalysis
                wordList = inputAnalyzer.cryptogram?.wordList
        } else {
            println("Cryptogram is not analyzed. Please analyze and try again")
            return nil
        }
    }
}
