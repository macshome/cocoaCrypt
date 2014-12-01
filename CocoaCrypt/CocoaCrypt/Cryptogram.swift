//
//  Cryptogram.swift
//  CocoaCrypt
//
//  Created by Josh Wisenbaker on 11/26/14.
//  Copyright (c) 2014 Josh Wisenbaker. All rights reserved.
//


class Cryptogram {
    let cipherText: String!
    var plainText: String?
    var frequencyAnalysis: [String: Int]?
    var wordList: [String: Int]?
    var cipherTable: [String: String?]?

    var hasCompletedFrequencyAnalysis = false
    var hasGeneratedWordList = false

    init(cipherText cipher: String) {
        cipherText = cipher
    }
    
}