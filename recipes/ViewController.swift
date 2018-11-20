//
//  ViewController.swift
//  recipes
//
//  Created by Louis Heath on 19/11/2018.
//  Copyright © 2018 Louis Heath. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let array = ["item1", "item2", "item3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.rowHeight = 70
        tableView.backgroundView = UIImageView(image: UIImage(named: "blender"))
        tableView.backgroundView?.tintColor = UIColor.white
        tableView.backgroundView?.contentMode = UIView.ContentMode.scaleAspectFill
        tableView.backgroundView?.clipsToBounds = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.alpha = 0.5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customcell") as! UITableViewCell
        
        cell.textLabel?.textColor = UIColor.black.withAlphaComponent(0.6)
        cell.textLabel?.text = array[indexPath.item]
        
        if (indexPath.item % 2 == 0) {
            cell.backgroundColor = UIColor.white.withAlphaComponent(0.6)
        } else {
            cell.backgroundColor = UIColor.white.withAlphaComponent(0.9)
        }
        
        return cell
    }

}
