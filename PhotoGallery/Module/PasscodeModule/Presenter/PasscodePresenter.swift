//
//  PasscodePresenter.swift
//  PhotoGallery
//
//  Created by Vladyslav on 21.02.2024.
//

import UIKit

protocol PasscodePresenterProtocol: AnyObject {
    var passcode: [Int] { get set }
    
    func enterPasscode(number: Int)
    func removeLastItemInPasscode()
    func setNewPasscode()
    func checkPasscode()
    func clearPasscode(state: PasscodeState)
}

class PasscodePresenter{
    
}

enum PasscodeState: String {
    case inputPasscode, wrongPasscode, setNewPasscode, repeadPasscode, codeMismatch
    
    func getPasscodeLabel() -> String {
        switch self {
            
        case .inputPasscode:
            return "Введите код"
        case .wrongPasscode:
            return "Неверный код"
        case .setNewPasscode:
            return "Установить код"
        case .repeadPasscode:
            return "Повторите код"
        case .codeMismatch:
            return "Коды не совпадает"
        }
    }
}
