//
//  KanaQuizGameViewController.swift
//  Kanji
//
//  Created by Jonathon Albert on 12/01/2021.
//  
//

import UIKit

protocol KanaQuizGameViewable: class {
    // Replaced by presenter's presentation output functions
}

final class KanaQuizGameViewController: UIViewController {

    private var interactor: KanaQuizGameInteractable?
    private var router: KanaQuizGameRoutable?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func bind(to interactor: KanaQuizGameInteractable?, and router: KanaQuizGameRoutable) {
        self.interactor = interactor
        self.router = router
    }
}

extension KanaQuizGameViewController: KanaQuizGameViewable {}
