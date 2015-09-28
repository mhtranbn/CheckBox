//
//  ViewController.swift
//  CheckboxExample
//
//  Created by Ștefan Godoroja on 8/9/14.
//  Copyright (c) 2014 Demo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CheckboxDelegate {
    
    let mCheckboxTitles = ["First option", "Second option", "Third option"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createCheckboxes();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func createCheckboxes() {
        let lNumberOfCheckboxes = 3;
        let lCheckboxHeight: CGFloat = 44.0;
        
        var lFrame = CGRectMake(0, 20, self.view.frame.size.width, lCheckboxHeight);
        
        for (var counter = 0; counter < lNumberOfCheckboxes; counter++) {
            let lCheckbox = Checkbox(frame: lFrame, title: mCheckboxTitles[counter], selected: false);
            lCheckbox.mDelegate = self;
            lCheckbox.tag = counter;
            
            self.view.addSubview(lCheckbox);
            
            lFrame.origin.y += lFrame.size.height;
        }
    }
    
    func didSelectCheckbox(state: Bool, identifier: Int, title: String) {
        print("checkbox '\(title)' has state \(state)");
    }
}

