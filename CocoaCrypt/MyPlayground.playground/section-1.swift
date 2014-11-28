// Playground - noun: a place where people can play

import Cocoa
import Foundation


let cipherText = "Ubty lzm vz dy xzq j kzg dyrtqadtu, D rbdyn j vzzs rbdyv rz jen de dx rbtl tatq oqtee pbjqvte."

var wordList = [String: Int]()


cipherText.enumerateSubstringsInRange(Range(start: cipherText.startIndex, end: cipherText.endIndex),
    options: NSStringEnumerationOptions.ByWords) { (substring, substringRange, enclosingRange, bool) -> () in
        println(substring)
        wordList[substring] = countElements(substring)
}

wordList