//
//  FlashcardLevelPresenter.swift
//  Kanji
//
//  Created by Jonathon Albert on 22/10/2020.
//  
//

import UIKit

protocol FlashcardLevelPresenterProtocol: class {
    // Replaced by presenter's output functions and conform the protocol in the view controller
}

class FlashcardLevelPresenter {

    weak var view: FlashcardLevelViewProtocol?
}

extension FlashcardLevelPresenter: FlashcardLevelPresenterProtocol {}
