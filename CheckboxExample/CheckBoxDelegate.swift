//
//  CheckBoxDelegate.swift
//  CheckBox
//
//  Created by Ștefan Godoroja on 8/9/14.
//  Copyright (c) 2014 Demo. All rights reserved.
//

import Foundation

protocol CheckBoxDelegate {
    func didSelectCheckBox(state: Bool, identifier: Int, title: String)
}
