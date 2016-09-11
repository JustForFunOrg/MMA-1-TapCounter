//
//  ViewController.swift
//  tap_counter
//
//  Created by Michail on 9/10/16.
//  Copyright © 2016 mishaparadising. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var tapCounterLabel: UILabel!;
    
    // MARK: Properties
    var counter = 0;

    // MARK: Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tapCounterLabel.text = String(counter);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    // MARK: Actions
    @IBAction func tapButtonTapped(sender: UIButton) {
        counter += 1;
        tapCounterLabel.text = String(counter);
    }
    
    @IBAction func resetBarButtonTapped(sender: UIButton) {
        counter = 0;
        tapCounterLabel.text = String(counter);
    }
    
    @IBAction func undoBarButtonTapped(sender: UIButton) {
        if(counter > 0) {
            counter -= 1;
        }
        
        tapCounterLabel.text = String(counter);
    }
}

