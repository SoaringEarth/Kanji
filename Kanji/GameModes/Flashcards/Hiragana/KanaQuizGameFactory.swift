//
//  KanaQuizGameFactory.swift
//  Kanji
//
//  Created by Jonathon Albert on 12/01/2021.
//  
//

import Foundation

enum KanaQuizGameFactory {

    static func makeScene() -> KanaQuizGameViewController {
        let vc = KanaQuizGameViewController(nibName: String(describing: KanaQuizGameViewController.self), bundle: .main)
        let presenter = KanaQuizGamePresenter(view: vc)
        let worker = KanaQuizGameWorker()
        let interactor = KanaQuizGameInteractor(presenter: presenter, worker: worker)
        let router = KanaQuizGameRouter()
        router.bind(to: vc)
        vc.bind(to: interactor, and: router)
        return vc
    }
}
