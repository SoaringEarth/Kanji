//
//  KanaDataSource.swift
//  Kanji
//
//  Created by Jonathon Albert on 11/01/2021.
//

import Foundation

struct Kana {
    let romanji: String
    let hiragana: String
    let katakana: String
}

class KanaDataSource {

    let romanji = ["a", "i", "u", "e", "o", "ka", "ki", "ku", "ke", "ko", "sa", "shi", "su", "se", "so", "ta", "chi", "tsu", "te", "to", "na", "ni", "nu", "ne", "no", "ha", "hi", "fu", "he", "ho", "ma", "mi", "mu", "me", "mo", "ya", "yu", "yo", "ra", "ri", "ru", "re", "ro", "wa", "o"]
    var kana: [Kana] = []

    func setup() {
        let kana: [Kana] = romanji.compactMap {
            guard let hiragana = $0.inHiragana(), let katakana = $0.inKatakana() else { return nil }
            return Kana(romanji: $0, hiragana: hiragana, katakana: katakana)
        }
        self.kana = kana
    }
}

extension String {
    func inHiragana() -> String? {
        return self.applyingTransform(.latinToHiragana, reverse: false)
    }

    func inKatakana() -> String? {
        return self.applyingTransform(.latinToKatakana, reverse: false)
    }
}
