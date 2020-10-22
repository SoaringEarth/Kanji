//
//  ModeSelectionComposer.swift
//  Kanji
//
//  Created by Jonathon Albert on 22/10/2020.
//  
//

import Foundation

struct ModeSelectionComposer {

    static func compose(view: ModeSelectionViewProtocol) {
        let interactor = ModeSelectionInteractor()
        let presenter = ModeSelectionPresenter()
        let router = ModeSelectionRouter()
        router.vc = view.vc
        view.interactor = interactor
        view.router = router
        presenter.view = view
        interactor.presenter = presenter
    }
}
