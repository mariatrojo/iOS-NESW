//
//  ViewController.swift
//  northEastSouthWest
//
//  Created by Maria Teresa Rojo on 1/17/18.
//  Copyright © 2018 Maria Rojo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func outputPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "outputPressed", sender: sender)
    }
    
    @IBAction func unwindToThisViewController(segue: UIStoryboardSegue) {
        print("unwind")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        northButton.set2Title("I'm North", for: .normal)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! OtherViewController
        if let button = (sender as? UIButton) {
            destination.output = button.titleLabel?.text
        }
    }

}

