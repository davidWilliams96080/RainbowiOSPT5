//
//  ColorsTableViewController.swift
//  RainbowiOSPT5
//
//  Created by David Williams on 1/28/20.
//  Copyright © 2020 david williams. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {

    var colors: [MyColor] = [MyColor(name: "Red", color: .red),
                             MyColor(name: "Orange", color: .orange),
                             MyColor(name: "Yellow", color: .yellow),
                             MyColor(name: "Green", color: .green),
                             MyColor(name: "Blue", color: .blue),
                             MyColor(name: "Indigo'ish", color: .cyan),
                             MyColor(name: "Violet", color: .purple)]
    
    // MARK: - Table view data source

    // These are our 2 required Data Source Methods  Must Haves!!!
    //How many rows in the tableview??
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return colors.count
    }

    // What data is in each cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)

        let color = colors[indexPath.row]
        cell.textLabel?.text = color.name
       // cell.textLabel?.textColor = color.color
       cell.self.backgroundColor = color.color

        return cell
    }

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
