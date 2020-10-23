//
//  KanjiListViewController.swift
//  Kanji
//
//  Created by Jonathon Albert on 22/10/2020.
//  
//

import UIKit

protocol KanjiListViewProtocol: class {
    var vc: KanjiListViewController? { get }
    var interactor: KanjiListInteractorProtocol? { get set }
    var router: KanjiListRouterProtocol? { get set }

    // Replaced by interactor's output functions and conform the protocol in presenter
}

class KanjiListViewController: UIViewController, KanjiListViewProtocol {

    weak var vc: KanjiListViewController? { self }
    var interactor: KanjiListInteractorProtocol?
    var router: KanjiListRouterProtocol?

    convenience init() {
        self.init()
        KanjiListComposer.compose(view: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
