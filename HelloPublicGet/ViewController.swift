//
//  ViewController.swift
//  HelloPublicGet
//
//  Created by Uran on 2018/7/5.
//  Copyright © 2018年 Uran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    let get = PublicGet()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculate(_ sender: Any) {
        guard let text = self.numTextField.text ,
            let doubleNum = Double(text)
        else {
            return
        }
        get.setCircleArea(With: doubleNum)
        //MARK: 使用 Set 就會錯誤
//        get.area = 200
        //MARK: 使用 Get 正常
        guard let area = get.area else{
            return
        }
        self.resultLabel.text = "\(area)"
    }
    
}

