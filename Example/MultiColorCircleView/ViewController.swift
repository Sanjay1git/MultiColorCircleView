//
//  ViewController.swift
//  MultiColorCircleView
//
//  Created by Sanjay on 05/10/2016.
//  Copyright (c) 2016 Sanjay. All rights reserved.
//

import UIKit
import MultiColorCircleView

class ViewController: UIViewController {
    @IBOutlet weak var multiColorCircleView: MultiColorCircleView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Change the colors and percentages. The colors count must be equal to the percentages count. First Percentage value corresponds to the first color value. The colors will be filled based on the corresponding percentage value.
        multiColorCircleView.colors = [UIColor.grayColor(), UIColor.orangeColor(), UIColor.magentaColor(), UIColor.yellowColor()]
        multiColorCircleView.percentages = [0.25, 0.5, 0.125, 0.125]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

