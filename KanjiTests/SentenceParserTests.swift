//
//  SentenceParserTests.swift
//  KanjiTests
//
//  Created by Jonathon Albert on 29/12/2020.
//

import XCTest
@testable import Kanji

class SentenceParserTests: XCTestCase {

    func test_init() {
        let sut = SentenceParser(nounOne: "I", nounTwo: "Person", adjectiveOne: "")
        XCTAssertTrue(sut.nounOne == "I")
        XCTAssertTrue(sut.nounTwo == "Person")
        XCTAssertTrue(sut.adjectiveOne == "")
    }

    func test_sentencePatternOne() {
        let sut = SentenceParser(nounOne: "I", nounTwo: "Person", adjectiveOne: "")
        XCTAssertNil(sut.nounOneIsnounTwo())
    }
}
