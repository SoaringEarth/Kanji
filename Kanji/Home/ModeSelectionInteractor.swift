//
//  ModeSelectionInteractor.swift
//  Kanji
//
//  Created by Jonathon Albert on 22/10/2020.
//  
//

import Foundation

protocol ModeSelectionInteractorProtocol {
    // Replaced by interactor's output functions and conform the protocol in presenter
}

class ModeSelectionInteractor {

    var presenter: ModeSelectionPresenterProtocol?

    init() {}
}

extension ModeSelectionInteractor: ModeSelectionInteractorProtocol {}
