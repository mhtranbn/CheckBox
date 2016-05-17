//
//  ViewController.swift
//  CheckboxExample
//
//  Created by Ștefan Godoroja on 8/9/14.
//  Copyright (c) 2014 Demo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CheckboxDelegate {

    let checkboxTitles = ["First option", "Second option", "Third option"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.createCheckboxes()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func createCheckboxes() {
        let numberOfCheckboxes = 3
        let checkboxHeight: CGFloat = 44.0
        var frame = CGRectMake(0, 20, self.view.frame.size.width, checkboxHeight)

        for counter in 0 ..< numberOfCheckboxes {
            let checkbox = Checkbox(frame: frame, title: checkboxTitles[counter], selected: false)
            checkbox.delegate = self
            checkbox.tag = counter
            self.view.addSubview(checkbox)
            frame.origin.y += frame.size.height
        }
    }

    func didSelectCheckbox(state: Bool, identifier: Int, title: String) {
        print("Checkbox '\(title)' has state \(state)")
    }
}
