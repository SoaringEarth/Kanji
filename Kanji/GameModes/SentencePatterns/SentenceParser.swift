//
//  SentenceParser.swift
//  Kanji
//
//  Created by Jonathon Albert on 29/12/2020.
//

import Foundation
import NaturalLanguage

struct SentenceParser {

    var nounOne: String
    var nounTwo: String
    var adjectiveOne: String

    func nounOneIsnounTwo() -> String? {
        return "\(nounOne) is \(nounTwo) desu"
    }
}

extension String {
    func inJapaneseHiragana() -> String? {
        return self.applyingTransform(.latinToHiragana, reverse: false)
    }
}
