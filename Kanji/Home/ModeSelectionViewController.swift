//
//  ModeSelectionViewController.swift
//  Kanji
//
//  Created by Jonathon Albert on 22/10/2020.
//  
//

import UIKit

protocol ModeSelectionViewProtocol: class {
    var vc: ModeSelectionViewController? { get }
    var interactor: ModeSelectionInteractorProtocol? { get set }
    var router: ModeSelectionRouterProtocol? { get set }

    // Replaced by interactor's output functions and conform the protocol in presenter
}

class ModeSelectionViewController: UIViewController, ModeSelectionViewProtocol {

    weak var vc: ModeSelectionViewController? { self }
    var interactor: ModeSelectionInteractorProtocol?
    var router: ModeSelectionRouterProtocol?

    convenience init() {
        self.init()
        ModeSelectionComposer.compose(view: self)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        ModeSelectionComposer.compose(view: self)
    }

    @IBAction func flashcardsOptionSelected(_ sender: Any) {
        router?.routeToFlashcard()
    }
}

extension ModeSelectionViewController {

}
