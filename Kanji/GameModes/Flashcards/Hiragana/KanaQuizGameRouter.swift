//
//  KanaQuizGameRouter.swift
//  Kanji
//
//  Created by Jonathon Albert on 12/01/2021.
// 
//

import UIKit

protocol KanaQuizGameRoutable {}

final class KanaQuizGameRouter {

    private weak var vc: UIViewController?

    func bind(to vc: UIViewController?) {
        self.vc = vc
    }
}

extension KanaQuizGameRouter: KanaQuizGameRoutable {}
