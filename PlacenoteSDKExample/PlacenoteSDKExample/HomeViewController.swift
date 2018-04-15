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
        return globalMap.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /*
        let map = globalMap[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: map.0) as! CustomTableViewCell
        
        //cell.textLabel!.text = map.0 //
        
        //var subtitle = "Distance Unknown"
        
        //cell.detailTextLabel!.text = subtitle
        
        
        print("globalmap is: ", globalMap)
        
        return cell
        */
        
        if (globalMap.isEmpty){
            print("No Maps Found")
            let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
            cell.customLabel.text = "No Maps Found"
            return cell
            
        }
        else{
            let map = globalMap[indexPath.row]
            print("globalMap is: ", map)
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
            
            cell.customLabel.text = map.0
     
            return cell
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
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
