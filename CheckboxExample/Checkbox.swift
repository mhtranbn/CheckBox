//
//  Checkbox.swift
//  PentaGoMobile
//
//  Created by Ștefan Godoroja on 8/9/14..
//  Copyright (c) 2014 Ștefan Godoroja. All rights reserved.
//

import UIKit

class Checkbox: UIButton {
    var delegate: CheckboxDelegate?

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    init(frame: CGRect, title: String, selected: Bool) {
        super.init(frame: frame)
        self.adjustEdgeInsets()
        self.applyStyle()
        self.setTitle(title, forState: UIControlState.Normal)
        self.addTarget(self, action: #selector(Checkbox.onTouchUpInside(_:)), forControlEvents: UIControlEvents.TouchUpInside)
    }

    func adjustEdgeInsets() {
        let leftInset: CGFloat = 8.0
        self.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Left
        self.imageEdgeInsets = UIEdgeInsetsMake(0.0 as CGFloat, leftInset, 0.0 as CGFloat, 0.0 as CGFloat)
        self.titleEdgeInsets = UIEdgeInsetsMake(0.0 as CGFloat, (leftInset * 2), 0.0 as CGFloat, 0.0 as CGFloat)
    }

    func applyStyle() {
        self.setImage(UIImage(named: "checked_checkbox"), forState: UIControlState.Selected)
        self.setImage(UIImage(named: "unchecked_checkbox"), forState: UIControlState.Normal)
        self.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
    }

    func onTouchUpInside(sender: UIButton) {
        self.selected = !self.selected
        delegate?.didSelectCheckbox(self.selected, identifier: self.tag, title: self.titleLabel!.text!)
    }
}
