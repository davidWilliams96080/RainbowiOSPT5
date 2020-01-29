//
//  ColorDetailViewController.swift
//  RainbowiOSPT5
//
//  Created by David Williams on 1/28/20.
//  Copyright © 2020 david williams. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    
    var cellColor: MyColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    func updateViews() {
        if let cellColor = cellColor {
            title = cellColor.name
            view.backgroundColor = cellColor.color
        }
    }
}
