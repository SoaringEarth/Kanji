//
//  KanjiListComposer.swift
//  Kanji
//
//  Created by Jonathon Albert on 22/10/2020.
//  
//

import Foundation

struct KanjiListComposer {

    static func compose(view: KanjiListViewProtocol) {
        let worker = KanjiListWorker()
        let interactor = KanjiListInteractor(worker: worker)
        let presenter = KanjiListPresenter()
        let router = KanjiListRouter()
        router.vc = view.vc
        view.interactor = interactor
        view.router = router
        presenter.view = view
        interactor.presenter = presenter
    }
}
