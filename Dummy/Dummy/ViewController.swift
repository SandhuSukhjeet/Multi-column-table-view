//
//  ViewController.swift
//  Dummy
//
//  Created by sukhjeet singh sandhu on 04/11/16.
//  Copyright © 2016 sukhjeet singh sandhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func historyButtonTapped(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "history", sender: nil)
    }
    
}

