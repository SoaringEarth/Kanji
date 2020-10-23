//
//  UIViewController+Storyboard.swift
//  Kanji
//
//  Created by Jonathon Albert on 22/10/2020.
//

import UIKit

extension UIViewController {

    static func from(storyboard: UIStoryboard, withIdentifier identifier: String? = nil) -> Self? {
        let vcIdentifier = identifier ?? String(describing: Self.self)
        return storyboard.instantiateViewController(withIdentifier: vcIdentifier) as? Self
    }

    static func asInitialVC(of storyboard: UIStoryboard) -> Self? {
        return storyboard.instantiateInitialViewController() as? Self
    }
}

extension Optional where Wrapped: UIViewController {

    var orDefault: Wrapped { self ?? Wrapped() }
}
