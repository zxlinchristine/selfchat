//
//  SecondViewController.swift
//  Selfchat
//
//  Created by NDHU_CSIE on 2021/11/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var inputText: UITextField!
    @IBOutlet var outputText:UILabel!
    
    var received:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        outputText.text = received
    }
    

    

}
