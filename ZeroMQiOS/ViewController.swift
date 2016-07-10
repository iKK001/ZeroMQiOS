//
//  ViewController.swift
//  ZeroMQiOS
//
//  Created by Stephan Korner on 10/07/16.
//  Copyright © 2016 Stephan Korner. All rights reserved.
//

// https://github.com/drewcrawford/libzmq-ios

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let zeroMQ = ZeroMQWrapper()
        let i:Int32 = zeroMQ.doTest1()
        print(i);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

