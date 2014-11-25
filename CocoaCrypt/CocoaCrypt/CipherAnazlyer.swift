//
//  CipherAnazlyer.swift
//  CocoaCrypt
//
//  Created by Josh Wisenbaker on 11/24/14.
//  Copyright (c) 2014 Josh Wisenbaker. All rights reserved.
//


import Foundation

class CipherAnalyzer {

    ///A dictionary template with all Ints set to 0
    let frequencyDict = ["A" : 0, "B" : 0, "C" : 0, "D" : 0, "E" : 0,
        "F" : 0, "G" : 0, "H" : 0, "I" : 0, "J" : 0, "K" : 0, "L" : 0,
        "M" : 0, "N" : 0, "O" : 0, "P" : 0, "Q" : 0, "R" : 0, "S" : 0,
        "T" : 0, "U" : 0, "V" : 0, "W" : 0, "X" : 0, "Y" : 0, "Z" : 0]

    func frequencyAnalysisFor(cipherText: String) -> Dictionary<String, Int> {
        var frequencyAnalysis = frequencyDict

        let cipherChars = Array(cipherText.uppercaseString)

        for char in cipherChars {
            if char.isMemberOf(NSCharacterSet.letterCharacterSet()) {
                frequencyAnalysis["\(char)"] = ++frequencyAnalysis["\(char)"]!
            }
        }
        return frequencyAnalysis
    }

}
