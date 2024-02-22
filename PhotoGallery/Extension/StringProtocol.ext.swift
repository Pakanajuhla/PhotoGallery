//
//  StringProtocol.ext.swift
//  PhotoGallery
//
//  Created by Vladyslav on 22.02.2024.
//

import UIKit

extension StringProtocol {
    var digits: [Int] { compactMap(\.wholeNumberValue) }
}
