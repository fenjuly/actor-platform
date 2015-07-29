//
//  SliderCell.swift
//  ActorApp
//
//  Created by Stepan Korshakov on 29.07.15.
//  Copyright (c) 2015 Actor LLC. All rights reserved.
//

import Foundation

class SliderCell: CommonCell {
    
    private let slider = UISlider()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        slider.tintColor = MainAppTheme.list.switchOnColor
        
        contentView.addSubview(slider)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    override func layoutSubviews() {
        super.layoutSubviews()

        slider.frame = CGRect(x: separatorInset.left, y: 27, width: contentView.bounds.width - separatorInset.left - 10, height: 27)
    }
}