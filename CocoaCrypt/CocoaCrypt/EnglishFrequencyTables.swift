//
//  EnglishFrequencyTables.swift
//  CocoaCrypt
//
//  Created by Josh Wisenbaker on 11/25/14.
//  Copyright (c) 2014 Josh Wisenbaker. All rights reserved.
//


/// A `Dictionary` template with all Ints set to 0
let frequencyDict = ["A" : 0, "B" : 0, "C" : 0, "D" : 0, "E" : 0,
    "F" : 0, "G" : 0, "H" : 0, "I" : 0, "J" : 0, "K" : 0, "L" : 0,
    "M" : 0, "N" : 0, "O" : 0, "P" : 0, "Q" : 0, "R" : 0, "S" : 0,
    "T" : 0, "U" : 0, "V" : 0, "W" : 0, "X" : 0, "Y" : 0, "Z" : 0]

/// An `Array` of letter frequencies in English
let englishLetterFrequency = ["E", "T",	"A", "O", "I", "N", "S", "H",
    "R", "D", "L", "U", "C", "M", "W", "F", "Y", "G", "P", "B", "V",
    "K", "X", "J", "Q", "Z"]

/// An `Array` of digraph frequencies in English
let englishDigraphFrequency = ["TH", "ER", "ON", "AN", "RE", "HE",
    "IN", "ED", "ND", "HA", "AT", "EN", "ES", "OF", "OR", "NT", "EA",
    "TI", "TO", "IT", "ST", "IO", "LE", "IS", "OU", "AR", "AS", "DE",
    "RT", "VE"]

/// An `Array` of trigraph frequencies in English
let englishTrigrahFrequency = ["the", "and", "tha", "ent", "ion", "tio",
    "for", "nde", "has", "nce", "edt", "tis", "oft", "sth", "men"]

/// An `Array` of double frequencies in English
let englishDoubleFrequency = ["ss", "ee", "tt", "ff", "ll", "mm", "oo"]

/// An `Array` of initial letter frequencies in English
let englishInitialLetterFrequency = ["T", "O", "A", "W", "B", "C", "D",
    "S", "F", "M", "R", "H", "I", "Y", "E", "G", "L", "N", "P", "U", "J", "K"]

/// An `Array` of final letter frequencies in English
let englishFinalLetterFrequency = ["E", "S", "T", "D", "N", "R", "Y", "F",
    "L", "O", "G", "H", "A", "K", "M", "P", "U", "W"]

/// An `Array` of one letter word frequencies in English
let englishOneLetterWordFrequency = ["a", "I"]

/// An `Array` of two letter word frequencies in English
let englishTwoLetterWordFrequency = ["of", "to", "in", "it", "is", "be",
    "as", "at", "so", "we", "he", "by", "or", "on", "do", "if", "me", "my",
    "up", "an", "go", "no", "us", "am"]

/// An `Array` of three letter word frequencies in English
let englishThreeLetterWordFrequency = ["the", "and", "for", "are", "but",
    "not", "you", "all", "any", "can", "had", "her", "was", "one", "our",
    "out", "day", "get", "has", "him", "his", "how", "man", "new", "now",
    "old", "see", "two", "way", "who", "boy", "did", "its", "let", "put",
    "say", "she", "too", "use"]

/// An `Array` of four letter word frequencies in English
let englishFourLetterWordFrequency = ["that", "with", "have", "this", "will",
    "your", "from", "they", "know", "want", "been", "good", "much", "some", "time"]