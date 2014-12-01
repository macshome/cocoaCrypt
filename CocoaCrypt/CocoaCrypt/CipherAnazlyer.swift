//
//  CipherAnazlyer.swift
//  CocoaCrypt
//
//  Created by Josh Wisenbaker on 11/24/14.
//  Copyright (c) 2014 Josh Wisenbaker. All rights reserved.
//


import Foundation

class CipherAnalyzer {

    /// A Cryptogram struct.
    var cryptogram: Cryptogram?


    init(WithCipherText inputCryptogram: Cryptogram) {
        cryptogram = inputCryptogram
    }

    func frequencyAnalysis()  {

        if let currentCryptogram = cryptogram?  {

            var frequencyAnalysis = frequencyDict

            let cipherChars = Array(currentCryptogram.cipherText.uppercaseString)

            for char in cipherChars {
                if char.isMemberOf(NSCharacterSet.letterCharacterSet()) {
                    frequencyAnalysis["\(char)"] = ++frequencyAnalysis["\(char)"]!
                }
            }

            var tempDict = frequencyAnalysis

            for (key, value) in frequencyAnalysis {
                if value == 0 {
                    tempDict["\(key)"] = nil
                }
            }

            currentCryptogram.frequencyAnalysis = tempDict
            currentCryptogram.hasCompletedFrequencyAnalysis = true
        }
    }


    func generateWordList() {

        if let currentCryptogram = cryptogram? {
            var wordAnalysis = [String: Int]()

            currentCryptogram.cipherText.enumerateSubstringsInRange(Range(start: currentCryptogram.cipherText.startIndex, end: currentCryptogram.cipherText.endIndex),
                options: NSStringEnumerationOptions.ByWords) { (substring, substringRange, enclosingRange, bool) -> () in
                    wordAnalysis[substring] = countElements(substring)
            }

            currentCryptogram.wordList = wordAnalysis
            currentCryptogram.hasGeneratedWordList = true
        }
        
    }
    
}