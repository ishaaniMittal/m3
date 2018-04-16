//
//  HomeViewController.swift
//  PlacenoteSDKExample
//
//  Created by Hope Idaewor on 4/13/18.
//  Copyright © 2018 Vertical. All rights reserved.
//

import UIKit
import CoreLocation
import SceneKit
import ARKit
import PlacenoteSDK

class HomeViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    

    @IBAction func addButtonPressed(_ sender: UIButton) {
        
        print("add button pressed")
        self.performSegue(withIdentifier: "ARMapView", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
