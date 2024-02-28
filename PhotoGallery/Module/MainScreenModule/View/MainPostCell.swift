//
//  MainPostCell.swift
//  PhotoGallery
//
//  Created by Vladyslav on 26.02.2024.
//

import UIKit

class MainPostCell: UICollectionViewCell {
    
    static let reuseId = "MainPostCell"
    private var tags: [String] = []
    
    private var tagCollectionView: UICollectionView!
    private var photoCountLabel = UILabel()
    private var commentCountLabel = UILabel()
    private var postDiscriptionLabel = UILabel()
    
    lazy var postImage: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        return $0
    }(UIImageView(frame: bounds))
    
    lazy var countLabelsStack: UIStackView = {
        .configure(view: $0) { stack in
            stack.axis = .horizontal
            stack.spacing = 20
        }
        
    }(UIStackView())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentViewConfig()
    }
    
    private func contentViewConfig() {
        addSubview(postImage)
        layer.cornerRadius = 30
        clipsToBounds = true
        
        setViewGradient(frame: bounds, startPoint: CGPoint(x: 0.5, y: 1), endPoint: CGPoint(x: 0.5, y: 0.5),
                        colors: [.black, .clear], location: [0,1])
    }
    
    func configureCell(item: PostItem) {
        postImage.image = UIImage(named: item.photos.first!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
