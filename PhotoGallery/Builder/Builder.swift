//
//  Builder.swift
//  PhotoGallery
//
//  Created by Vladyslav on 21.02.2024.
//

import UIKit

protocol BuilderProtocol {
    static func getPasscodeController() -> UIViewController
}
class Builder: BuilderProtocol {
    static func getPasscodeController() -> UIViewController {
        PasscodeView()
    }
}
