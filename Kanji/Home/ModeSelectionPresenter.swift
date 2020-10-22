//
//  ModeSelectionPresenter.swift
//  Kanji
//
//  Created by Jonathon Albert on 22/10/2020.
//  
//

import UIKit

protocol ModeSelectionPresenterProtocol: class {
    // Replaced by presenter's output functions and conform the protocol in the view controller
}

class ModeSelectionPresenter {

    weak var view: ModeSelectionViewProtocol?
}

extension ModeSelectionPresenter: ModeSelectionPresenterProtocol {}
