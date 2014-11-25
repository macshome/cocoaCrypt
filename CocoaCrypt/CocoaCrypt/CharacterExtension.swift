//
//  CharacterExtension.swift
//  CocoaCrypt
//
//  Created by Josh Wisenbaker on 11/25/14.
//  Copyright (c) 2014 Josh Wisenbaker. All rights reserved.
//

import Foundation

/// Class extension to add a isMemberOf test to Swift chars
extension Character {

    func isMemberOf(set: NSCharacterSet) -> Bool {
        let bridgedCharacter = (String(self) as NSString).characterAtIndex(0)
        return set.characterIsMember(bridgedCharacter)
    }
}