//
//  KanjiListInteractor.swift
//  Kanji
//
//  Created by Jonathon Albert on 22/10/2020.
//  
//

import Foundation

protocol KanjiListInteractorProtocol {
    // Replaced by interactor's output functions and conform the protocol in presenter
}

class KanjiListInteractor {

    var presenter: KanjiListPresenterProtocol?
    let worker: KanjiListWorkerProtocol

    init(worker: KanjiListWorker) {
        self.worker = worker
    }
}

extension KanjiListInteractor: KanjiListInteractorProtocol {}
