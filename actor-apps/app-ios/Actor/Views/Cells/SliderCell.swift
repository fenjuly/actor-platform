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
    private var changed: ((Double) -> ())? = nil
    private var titleLabel: UILabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        slider.tintColor = MainAppTheme.list.switchOnColor
        slider.addTarget(self, action: "sliderChanged", forControlEvents: UIControlEvents.ValueChanged)
        slider.continuous = false
        contentView.addSubview(slider)
        
        titleLabel.font = UIFont.systemFontOfSize(14.0)
        titleLabel.text = " "
        titleLabel.sizeToFit()
        titleLabel.textColor = MainAppTheme.list.textColor
        contentView.addSubview(titleLabel)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitle(title: String) {
        titleLabel.text = title
    }
    
    func setValue(value: Double) {
        slider.value = Float(value)
    }
    
    func setChanged(changed: (Double) -> ()) {
        self.changed = changed
    }
    
    func sliderChanged() {
        changed?(Double(slider.value))
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        titleLabel.frame = CGRect(x: separatorInset.left, y: 7, width: contentView.bounds.width - separatorInset.left - 10, height: titleLabel.bounds.height)

        slider.frame = CGRect(x: separatorInset.left, y: 40, width: contentView.bounds.width - separatorInset.left - 10, height: 26)
    }
}