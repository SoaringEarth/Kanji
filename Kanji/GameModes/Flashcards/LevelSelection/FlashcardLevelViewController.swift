//
//  FlashcardLevelViewController.swift
//  Kanji
//
//  Created by Jonathon Albert on 22/10/2020.
//  
//

import UIKit

protocol FlashcardLevelViewProtocol: class {
    var vc: FlashcardLevelViewController? { get }
    var interactor: FlashcardLevelInteractorProtocol? { get set }
    var router: FlashcardLevelRouterProtocol? { get set }

    // Replaced by interactor's output functions and conform the protocol in presenter
}

class FlashcardLevelViewController: UIViewController, FlashcardLevelViewProtocol {

    weak var vc: FlashcardLevelViewController? { self }
    var interactor: FlashcardLevelInteractorProtocol?
    var router: FlashcardLevelRouterProtocol?

    convenience init() {
        self.init()
        FlashcardLevelComposer.compose(view: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
