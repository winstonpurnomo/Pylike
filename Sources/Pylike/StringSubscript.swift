//
//  StringSubscript.swift
//  Cryptopals
//
//  Created by Winston Purnomo on 6/15/22.
//

import Foundation

// This String extension allows Python-style string indexing.
extension String {
    // Allows string indexing of the form i..<j
    subscript (bounds: Range<Int>) -> String {
        let lower = self.index(startIndex, offsetBy: bounds.lowerBound)
        let upper = self.index(startIndex, offsetBy: bounds.upperBound)
        return String(self[lower..<upper])
    }
    
    // Allows string indexing of the form i...j
    subscript (bounds: ClosedRange<Int>) -> String {
        let lower = self.index(startIndex, offsetBy: bounds.lowerBound)
        let upper = self.index(startIndex, offsetBy: bounds.upperBound)
        return String(self[lower...upper])
    }
    
    // Allows string indexing of the form i...
    subscript (bounds: PartialRangeFrom<Int>) -> String {
        let lower = self.index(startIndex, offsetBy: bounds.lowerBound)
        return String(self[lower...])
    }
    
    // Allows string indexing of the form ..<j
    subscript (bounds: PartialRangeUpTo<Int>) -> String {
        let upper = self.index(startIndex, offsetBy: bounds.upperBound)
        return String(self[..<upper])
    }
    
    // Allows string indexing of the form ...j
    subscript (bounds: PartialRangeThrough<Int>) -> String {
        let upper = self.index(startIndex, offsetBy: bounds.upperBound)
        return String(self[...upper])
    }
    
    // Creates a copy of the string
    subscript (bounds: UnboundedRange) -> String {
        let copy = self
        return copy
    }
    
    // Returns the character at INDEX.
    subscript (index: Int) -> Character {
        return self[self.index(startIndex, offsetBy: index)]
    }
}
