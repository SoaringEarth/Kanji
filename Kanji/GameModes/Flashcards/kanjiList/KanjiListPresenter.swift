//
//  KanjiListPresenter.swift
//  Kanji
//
//  Created by Jonathon Albert on 22/10/2020.
//  
//

import UIKit

protocol KanjiListPresenterProtocol: class {
    // Replaced by presenter's output functions and conform the protocol in the view controller
}

class KanjiListPresenter {

    weak var view: KanjiListViewProtocol?
}

extension KanjiListPresenter: KanjiListPresenterProtocol {}
