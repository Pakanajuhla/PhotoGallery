//
//  SceneDelegate.swift
//  PhotoGallery
//
//  Created by Vladyslav on 21.02.2024.
//

import UIKit

protocol SceneDelegateProtocol {
    func startMainScreen()
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    private var keychainManager = KeychainManager()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = Builder.getPasscodeController(passcodeState: checkIssetPasscode(),
                                                                   sceneDelegate: self)
        window?.makeKeyAndVisible()
    }
    
    private func checkIssetPasscode() -> PasscodeState {
        let checkPasscodeResult = keychainManager.load(key: KeychainKeys.passcode.rawValue)
        switch checkPasscodeResult {
            
        case .success(let code):
            return code.isEmpty ? .setNewPasscode : .inputPasscode
        case .failure:
            return .setNewPasscode
        }
    }


}

extension SceneDelegate: SceneDelegateProtocol{
    func startMainScreen() {
        self.window?.rootViewController = Builder.createTabBarController()
    }
    
    
}

