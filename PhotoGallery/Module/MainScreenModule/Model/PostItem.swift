//
//  PostItem.swift
//  PhotoGallery
//
//  Created by Vladyslav on 26.02.2024.
//

import Foundation

class PostDate: Identifiable {
    let id = UUID().uuidString
    let items: [PostItem]
    let date: Date
    
    init(items: [PostItem], date: Date) {
        self.items = items
        self.date = date
    }
    
    static func getMockDate() -> [PostDate] {
        [
            PostDate(items: [
                PostItem(photos: ["image1"], comments: nil, tags: ["Красивое фото!"], description: "He deals the cards as a meditation - And those he plays never suspect - He doesn't play for the money he wins - He don't play for respect - He deals"),
                PostItem(photos: ["image2"], comments: nil, tags: ["Красивое фото!"], description: "He deals the cards as a meditation - And those he plays never suspect - He doesn't play for the money he wins - He don't play for respect - He deals"),
                PostItem(photos: ["image3"], comments: nil, tags: ["Красивое фото!"], description: "He deals the cards as a meditation - And those he plays never suspect - He doesn't play for the money he wins.")
                
            ], date: Date()),
            
            PostDate(items: [
                PostItem(photos: ["image2"], comments: nil, tags: ["Красивое фото!"], description: "He deals the cards as a meditation - And those he plays never suspect - He doesn't play for the money he wins - He don't play for respect - He deals"),
                PostItem(photos: ["image3"], comments: nil, tags: ["Красивое фото!"], description: "He deals the cards as a meditation - And those he plays never suspect - He doesn't play for the money he wins - He don't play for respect - He deals"),
                
            ], date: Date().addingTimeInterval(-86400)),
            
            PostDate(items: [
                PostItem(photos: ["image1"], comments: nil, tags: ["Красивое фото!"], description: "He deals the cards as a meditation - And those he plays never suspect - He doesn't play for the money he wins - He don't play for respect - He deals"),
                PostItem(photos: ["image3"], comments: nil, tags: ["Красивое фото!"], description: "He deals the cards as a meditation - And those he plays never suspect - He doesn't play for the money he wins - He don't play for respect - He deals"),
            ], date: Date().addingTimeInterval(-172800))
        ]
    }
}

class PostItem: Identifiable {
    let id = UUID().uuidString
    let photos: [String]
    let comments: [Comment]?
    let tags: [String]?
    let description: String?
    let isFavorite: Bool = false
    
    init(photos: [String], comments: [Comment]?, tags: [String]?, description: String?) {
        self.photos = photos
        self.comments = comments
        self.tags = tags
        self.description = description
    }
}

class Comment: Identifiable {
    let id = UUID().uuidString
    let date: Date
    let comment: String
    
    init(date: Date, comment: String) {
        self.date = date
        self.comment = comment
    }
}
