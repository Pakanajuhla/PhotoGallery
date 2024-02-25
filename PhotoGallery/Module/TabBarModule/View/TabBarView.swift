//
//  TabBarView.swift
//  PhotoGallery
//
//  Created by Vladyslav on 25.02.2024.
//

import UIKit

protocol TabBarViewProtocol: AnyObject {
    func setControllers(controllers: [UIViewController])
}

class TabBarView: UITabBarController {
    
    var presenter: TabBarViewPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .appMain

    }
}

extension TabBarView: TabBarViewProtocol {
    func setControllers(controllers: [UIViewController]) {
        tabBarController?.setViewControllers(controllers, animated: true)
    }
    
    
}
