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

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let elements = ["dog", "cat"]
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        
        /*cell.customLabel.text = elements[indexPath.row]*/
 
        return cell
    }
    

    @IBAction func addButtonPressed(_ sender: UIButton) {
        
        print("add button pressed")
        self.performSegue(withIdentifier: "ARMapView", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
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
