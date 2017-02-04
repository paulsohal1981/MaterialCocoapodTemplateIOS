//
//  ViewController.swift
//  MaterialCocoaPodTemplate
//
//  Created by paul sohal on 2/2/17.
//  Copyright © 2017 Acceler Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func RestService(_ sender: Any) {
        let restService:RESTService = RESTService()
        
        restService.GetCountryCodes(success: displayCountries)
    
    }
    
    func displayCountries(countires:[Country]) -> Void {
        _ = countires.count
    }
    
}

