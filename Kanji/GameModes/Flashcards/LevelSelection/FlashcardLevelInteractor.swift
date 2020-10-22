//
//  FlashcardLevelInteractor.swift
//  Kanji
//
//  Created by Jonathon Albert on 22/10/2020.
//  
//

import Foundation

protocol FlashcardLevelInteractorProtocol {
    // Replaced by interactor's output functions and conform the protocol in presenter
}

class FlashcardLevelInteractor {

    var presenter: FlashcardLevelPresenterProtocol?

    init() {}
}

extension FlashcardLevelInteractor: FlashcardLevelInteractorProtocol {}
