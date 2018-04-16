//
//  AddDevicePopUpViewController.swift
//  PlacenoteSDKExample
//
//  Created by Ishaani Mittal on 4/15/18.
//  Copyright © 2018 Vertical. All rights reserved.
//

import UIKit

class AddDevicePopUpViewController: UIViewController {

    @IBOutlet weak var deviceNameInput: UITextField!
    @IBOutlet weak var functionInput: UITextField!
    
    public var shapeManager: ShapeManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        self.showAnimate()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveDevice(_ sender: Any) {
       self.removeAnimate()
    }
    
    @IBAction func saveDeviceFunction(_ sender: Any) {
        // shapeManager.saveDeviceFunction(function: functionInput.text!)
    }
    
    @IBAction func saveDeviceName(_ sender: Any) {
       //  shapeManager.saveDeviceName(deviceName: deviceNameInput.text!)
    }
    
    
    
    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    func removeAnimate()
    {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
        });
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
