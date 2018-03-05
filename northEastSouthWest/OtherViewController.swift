//
//  OtherViewController.swift
//  northEastSouthWest
//
//  Created by Maria Teresa Rojo on 1/17/18.
//  Copyright © 2018 Maria Rojo. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {

    @IBOutlet weak var outputButton: UIButton!
    
    var output: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputButton.setTitle(output, for: .normal)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissButtonPressed(_ sender: UIButton) {
//        dismiss(animated: true, completion: nil)
        performSegue(withIdentifier: "unwindToThisViewController", sender: self)
    }
    
}
