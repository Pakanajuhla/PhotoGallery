//
//  PasscodeView.swift
//  PhotoGallery
//
//  Created by Vladyslav on 21.02.2024.
//

import UIKit

protocol PasscodeViewProtocol: AnyObject {
    func passcodeState(state: PasscodeState)
    func enterCode(code: [Int])
}

class PasscodeView: UIViewController {
    
    var passcodePresenter: PasscodePresenterProtocol!
    
    //MARK: - Private Properties
    
    private let buttons: [ [Int] ] = [[1,2,3], [4,5,6], [7,8,9], [0]]
    
    private lazy var passcodeTitle: UILabel = {
        .configure(view: $0) { label in
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
            label.textAlignment = .center
        }
    }(UILabel())
    
    private lazy var keyboardStack: UIStackView = {
        .configure(view: $0) { stack in
            stack.axis = .vertical
            stack.distribution = .equalSpacing
            stack.alignment = .center
        }
    }(UIStackView())
    
    private lazy var codeStack: UIStackView = {
        .configure(view: $0) { stack in
            stack.axis = .horizontal
            stack.distribution = .equalCentering
            stack.spacing = 20
        }
    }(UIStackView())
    
    private lazy var deleteButton: UIButton = {
        .configure(view: $0) { button in
            button.widthAnchor.constraint(equalToConstant: 36).isActive = true
            button.heightAnchor.constraint(equalToConstant: 36).isActive = true
            button.setImage(UIImage .appDelete, for: .normal)
        }
    }(UIButton())
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .appMain
        [keyboardStack, passcodeTitle, codeStack, deleteButton] .forEach {
            view.addSubview($0)
        }
        
        buttons.forEach {
            let buttonLine = setGirizontalNumStack(range: $0)
            keyboardStack.addArrangedSubview(buttonLine)
        }
        
        NSLayoutConstraint.activate([
            keyboardStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            keyboardStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            keyboardStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            keyboardStack.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: 80),
            
            deleteButton.rightAnchor.constraint(equalTo: keyboardStack.rightAnchor, constant: -22),
            deleteButton.bottomAnchor.constraint(equalTo: keyboardStack.bottomAnchor, constant: -25),
        ])
    }
  
}

//MARK: - Extensions

extension PasscodeView {
    private func getGirizontalNumStack() -> UIStackView {
        return {
            .configure(view: $0) { stack in
                stack.axis = .horizontal
                stack.spacing = 50
            }
        }(UIStackView())
    }
    
    private func setGirizontalNumStack(range: [Int]) -> UIStackView {
        let stack = getGirizontalNumStack()
        range.forEach {
            let numButton = UIButton(primaryAction: nil)
            numButton.tag = $0
            numButton.setTitle("\($0)", for: .normal)
            numButton.setTitleColor(.white, for: .normal)
            numButton.titleLabel?.font = UIFont.systemFont(ofSize: 60, weight: .light)
            numButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
            stack.addArrangedSubview(numButton)
        }
        
        return stack
    }
}

extension PasscodeView: PasscodeViewProtocol {
    func passcodeState(state: PasscodeState) {
        passcodeTitle.text = state.getPasscodeLabel()
    }
    
    func enterCode(code: [Int]) {
        print(code)
    }
    
}
