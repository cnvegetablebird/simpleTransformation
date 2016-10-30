//
//  DetailViewController.swift
//  simpleTransformation
//
//  Created by chennan on 16/10/30.
//  Copyright © 2016年 CN. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    @IBAction func gobackAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
