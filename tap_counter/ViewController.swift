//
//  ViewController.swift
//  tap_counter
//
//  Created by Michail on 9/10/16.
//  Copyright © 2016 mishaparadising. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 0;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tapCounter.text = String(counter);
        
        self.navigationItem.hidesBackButton = true;
        
        let resetButton = UIBarButtonItem(title: "Reset", style: UIBarButtonItemStyle.Bordered, target: self, action: Selector("resetButton"))
        self.navigationItem.leftBarButtonItem = resetButton;
        
        let decreaseByOneButton = UIBarButtonItem(title: "Undo", style: UIBarButtonItemStyle.Bordered, target: self, action: Selector("decreaseByOne"))
        self.navigationItem.rightBarButtonItem = decreaseByOneButton;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var tapCounter: UILabel!;

    @IBAction func tapButton(sender: UIButton) {
        counter += 1;
        tapCounter.text = String(counter);
    }
    
    func resetButton() {
        counter = 0;
        tapCounter.text = String(counter);
    }
    
    func decreaseByOne() {
        if(counter > 0) {
            counter -= 1;
        }
        
        tapCounter.text = String(counter);
    }
}

