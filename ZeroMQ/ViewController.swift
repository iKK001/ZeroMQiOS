//
//  ViewController.swift
//  ZeroMQ
//
//  Created by Stephan Korner on 03/07/16.
//  Copyright © 2016 Stephan Korner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let zeroMQ = ZeroMQWrapper()
//        let _:Int32 = zeroMQ.startMain()
        let i:Int32 = zeroMQ.doTest()
        
        print(i);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

