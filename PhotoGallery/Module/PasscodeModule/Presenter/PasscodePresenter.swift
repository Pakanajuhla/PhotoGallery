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
    
    init(view: PasscodeViewProtocol, passcodeState: PasscodeState)
}

class PasscodePresenter: PasscodePresenterProtocol {
    var passcode: [Int] = []
    var view: PasscodeViewProtocol
    var passcodeState: PasscodeState
    
    required init(view: PasscodeViewProtocol, passcodeState: PasscodeState) {
        self.view = view
        self.passcodeState = passcodeState
        
        view.passcodeState(state: .inputPasscode)
    }
    
    func enterPasscode(number: Int) {
                
    }
    
    func removeLastItemInPasscode() {
        
    }
    
    func setNewPasscode() {
        
    }
    
    func checkPasscode() {
        
    }
    
    func clearPasscode(state: PasscodeState) {
        
    }

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
