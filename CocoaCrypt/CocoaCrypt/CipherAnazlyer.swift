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

        if cryptogram? != nil {
            var frequencyAnalysis = frequencyDict

            let cipherChars = Array(cryptogram!.cipherText.uppercaseString)

            for char in cipherChars {
                if char.isMemberOf(NSCharacterSet.letterCharacterSet()) {
                    frequencyAnalysis["\(char)"] = ++frequencyAnalysis["\(char)"]!
                }
            }
            cryptogram?.frequencyAnalysis = frequencyAnalysis
        }
    }

    
    
}
