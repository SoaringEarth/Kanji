//
//  KanjiListViewModel.swift
//  Kanji
//
//  Created by Jonathon Albert on 22/10/2020.
//  
//

import Foundation

enum KanjiLevel: Int {
    case one = 1
    case two = 2
    case three = 3
    case four = 4
    case five = 5
    case six = 6
}

struct KanjiListViewModel {

    var currentLevel: KanjiLevel
}
