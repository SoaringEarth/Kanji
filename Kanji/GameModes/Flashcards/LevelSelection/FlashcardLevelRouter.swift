//
//  FlashcardLevelRouter.swift
//  Kanji
//
//  Created by Jonathon Albert on 22/10/2020.
// 
//

import UIKit

protocol FlashcardLevelRouterProtocol {
    func routeToKanjiList(forLevel level: Int)
}

class FlashcardLevelRouter: FlashcardLevelRouterProtocol {

    weak var vc: FlashcardLevelViewController?

    func routeToKanjiList(forLevel level: Int) {
        let kanjiListVC = KanjiListViewController.from(storyboard: .flashcards).orDefault
        vc?.navigationController?.pushViewController(kanjiListVC, animated: true)

    }
}
