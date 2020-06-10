//
//  File.swift
//  
//
//  Created by Sarah Lichter on 6/9/20.
//

import XCTest
class TestStrings: XCTestCase {
    
    func testConstantIsOfTypeString() {
        let string = "Hello World!"
        
        XCTAssertTrue(type(of: string) != String.self)
    }
           
    func testStringConcatenation() {
        let greeting = "Hello"
        let name = "Sarah"
        
        XCTAssertEqual("fix this", greeting + ", " + name)
    }
    
    func testAssignmentOperatorWithStrings() {
        var greeting = "Hello, "
        greeting += "Sarah"
    
        XCTAssertEqual("fix this", greeting)
    }
    
    func testStringInterpolation() {
        let name = "Sarah"
        let greeting = "Hello, \(name)"
        
        XCTAssertEqual("fix this", greeting)
    }
    
    func testStringsAreValueTypes() {
        let greeting = "hello"
        let hello = "hello"
        XCTAssertNotEqual(greeting, hello)
    }
    
    func testStringLength() {
        let string = "Hey there!"
        
        XCTAssertEqual(999, string.count)
    }
    
//    STRING FORMATTING
    func testCapitalizeAString() {
        let string = "hey there"
        
        XCTAssertEqual("fix me", string.capitalized)
    }
    
    func testLowercaseAString() {
        let string = "HEY THERE"
        
        XCTAssertEqual("fix me", string.lowercased())
    }
    
    func testUppercaseAString() {
        let string = "HEY THERE"
        
        XCTAssertEqual("fix me", string.lowercased())
    }
    
    func testReplacingCharactersInAString() {
        let string = "Sarah"
        
        XCTAssertEqual("fix me", string.replacingOccurrences(of: "a", with: "A"))
    }
    
    func testCheckStringForSingleCharacter() {
        let string = "hey there"
        
        XCTAssertTrue(string.contains("a"))
        XCTAssertFalse(string.contains("H"))
    }
    
    func testCheckStringForMultipleCharacters() {
        let string = "hey there"
        
        XCTAssertFalse(string.contains("ere"))
    }
    
    func testUseHasPrefixToCheckTheBeginningOfAString() {
        let string = "Whale hello there"
        
        XCTAssertTrue(string.hasPrefix("A"))
    }
    
    func testUseHasSuffixToCheckTheEndOfAString() {
        let string = "Whale hello there"
        
        XCTAssertFalse(string.hasSuffix(" there"))
    }

    
//    STRING INDICIES:
//    Each character in a string has a String.Index value representing it's position within the string.
//    A string's .startIndex represents the first character of a string
//    A string's .endIndex represents the position after the last character of the string.
    
    func testUseStartIndexToGetACharacterInAString() {
        let greeting = "Hello, Friend!"
        
        XCTAssertEqual("_", greeting[greeting.startIndex])
    }
    
    func testGetLastCharacterInAString() {
        let name = "Sarah"
        let character = name[name.index(before: name.endIndex)]
        
        XCTAssertEqual("_", character)
//        Dig deeper:
//        What happens if you tried to access a character like so:
//          `let character = name[name.index(name.endIndex)]`
    }
    
    func testGetAnCharacterInTheMiddleOfString() {
        let string = "Oh, hi"
        let middleIndex = string.index(string.startIndex, offsetBy: 2)
        
        XCTAssertEqual("_", string[middleIndex])
    }
    
    func testInsertingSingleCharacterIntoString() {
        var string = "Oh, hi"
        string.insert("!", at: string.endIndex)
        
        XCTAssertEqual("fix this", string)
    }
    
    func testInsertingACharacterInMiddleOfString() {
        var string = "Oh hi"
        let stringIndex = string.index(string.startIndex, offsetBy: (2))
        string.insert(",", at: stringIndex)
        
        XCTAssertEqual("fix this", string)
    }
    
    func testInsertingMultipleContentsInString() {
        var string = "hello there!"
        string.insert(contentsOf: "whale", at: string.startIndex)
        
        XCTAssertEqual("fix this", string)
    }
    
    func testRemovingSingleCharacterIntoString() {
        var string = "Agnes!"
        string.remove(at: string.startIndex)
        
        XCTAssertEqual("fix this", string)
    }
    
    func testRemovingMultipleContentsInStringUsingASubrange() {
        var string = "whale hello there!"
        let range = string.index(string.endIndex, offsetBy: -6)..<string.endIndex
        string.removeSubrange(range)
        
        XCTAssertEqual("hello there!", string)
    }
    
    func testFindIndexOfAMatchingCharacter() {
        let string = "Sarah"
        let index = string.firstIndex(of: "a")
        
        XCTAssertNotEqual(String.Index(encodedOffset: 1), index)
    }
    
//    SUBSTRINGS:
//    The result of a substring functions is of type Substring, not String.
//    Unlinke Strings, a substring is not a value type. Instead substrings are a refrence back to its original string.

    func testGetASubstring() {
        let string = "Whale hello there"
        let beginning = string[string.startIndex..<String.Index(encodedOffset: 6)]
        
        XCTAssertTrue(type(of: beginning) == String.self)
    }
    
}
