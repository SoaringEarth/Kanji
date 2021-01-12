//
//  KanaQuizGamePresenter.swift
//  Kanji
//
//  Created by Jonathon Albert on 12/01/2021.
//  
//

import UIKit

protocol KanaQuizGamePresentable: class {
    // Replaced by interactor's display output functions
}

final class KanaQuizGamePresenter {

    private weak var view: KanaQuizGameViewable?

    init(view: KanaQuizGameViewable?) {
        self.view = view
    }
}

extension KanaQuizGamePresenter: KanaQuizGamePresentable {}
