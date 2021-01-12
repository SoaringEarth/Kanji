//
//  KanaQuizGameInteractor.swift
//  Kanji
//
//  Created by Jonathon Albert on 12/01/2021.
//  
//

import Foundation

protocol KanaQuizGameInteractable {
    // Replaced by view's output functions
}

final class KanaQuizGameInteractor {

    private let presenter: KanaQuizGamePresentable
    private let worker: KanaQuizGameWorkable

    init(presenter: KanaQuizGamePresentable, worker: KanaQuizGameWorkable) {
        self.presenter = presenter
        self.worker = worker
    }
}

extension KanaQuizGameInteractor: KanaQuizGameInteractable {}
