//
//  CypherAnazlyer.swift
//  CocoaCrypt
//
//  Created by Josh Wisenbaker on 11/24/14.
//  Copyright (c) 2014 Josh Wisenbaker. All rights reserved.
//

extension Character {

    func isMemberOf(set: NSCharacterSet) -> Bool {
        let bridgedCharacter = (String(self) as NSString).characterAtIndex(0)
        return set.characterIsMember(bridgedCharacter)
    }
}

import Foundation

class CypherAnalyzer {

    var cypherText = ""
    let frequencyDict = ["a" : 0, "b" : 0, "c" : 0, "d" : 0, "e" : 0,
        "f" : 0, "g" : 0, "h" : 0, "i" : 0, "j" : 0, "k" : 0, "l" : 0, "m" : 0,
        "n" : 0, "o" : 0, "p" : 0, "q" : 0, "r" : 0, "s" : 0, "t" : 0, "u" : 0,
        "v" : 0, "w" : 0, "x" : 0, "y" : 0, "z" : 0]

    func frequencyAnalysis() -> Dictionary<String, Int> {
        var frequencyAnalysis = frequencyDict

        let cypherChars = Array(cypherText.lowercaseString)

        for char in cypherChars {
            if char.isMemberOf(NSCharacterSet.letterCharacterSet()) {
                frequencyAnalysis["\(char)"] = frequencyAnalysis["\(char)"]! + 1
            }
        }
        return frequencyAnalysis
    }
    
}
