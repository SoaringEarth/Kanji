//
//  FlashcardLevelComposer.swift
//  Kanji
//
//  Created by Jonathon Albert on 22/10/2020.
//  
//

import Foundation

struct FlashcardLevelComposer {

    static func compose(view: FlashcardLevelViewProtocol) {
        let interactor = FlashcardLevelInteractor()
        let presenter = FlashcardLevelPresenter()
        let router = FlashcardLevelRouter()
        router.vc = view.vc
        view.interactor = interactor
        view.router = router
        presenter.view = view
        interactor.presenter = presenter
    }
}
