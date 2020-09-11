//
//  YPAlbumCell.swift
//  YPImagePicker
//
//  Created by Sacha Durand Saint Omer on 20/07/2017.
//  Copyright © 2017 Yummypets. All rights reserved.
//

import UIKit
import Stevia

class YPAlbumCell: UITableViewCell {
    
    let thumbnail = UIImageView()
    let title = UILabel()
    let numberOfItems = UILabel()
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.addArrangedSubview(title)
        stackView.addArrangedSubview(numberOfItems)
        
        sv(
            thumbnail,
            stackView
        )
        
        layout(
            8,
            |-15-thumbnail.size(90),
            8
        )
        
        align(horizontally: thumbnail-15-stackView)
        
        thumbnail.contentMode = .scaleAspectFill
        thumbnail.clipsToBounds = true
        
//        TODO: use config options
//        title.font = YPConfig.fonts.albumCellTitleFont
//        numberOfItems.font = YPConfig.fonts.albumCellNumberOfItemsFont
        
        title.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.regular)
        title.textColor = UIColor(r: 48, g: 66, b: 87)
        numberOfItems.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        numberOfItems.textColor = UIColor(r: 152, g: 152, b: 152)
    }
}
