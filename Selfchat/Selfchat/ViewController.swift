//
//  ViewController.swift
//  Selfchat
//
//  Created by NDHU_CSIE on 2021/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputText: UITextField!
    @IBOutlet var outputText:UILabel!
    
    var received:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "changeUser" {
            //pass the data
            let des = segue.destination as! SecondViewController
            des.received = inputText.text
        }
    }

    @IBAction func backTo(segue: UIStoryboardSegue){
        let src = segue.source as! SecondViewController
        received = src.inputText.text
        outputText.text = received
        dismiss(animated: true, completion: nil)  //close the source(second) 
    }
}

