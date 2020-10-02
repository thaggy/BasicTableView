//
//  ColorViewController.swift
//  Color
//
//  Created by Hagedorn on 10/2/20.
//

import UIKit

class ColorViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var Color = ["red", "orange","yellow", "green", "blue", "purple", "brown"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Color.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.textLabel?.text = Color[indexPath.row]
        switch Color[indexPath.row] {
        case "red":
            cell.backgroundColor = UIColor.red
        case "orange":
            cell.backgroundColor = UIColor.orange
        case "yellow":
            cell.backgroundColor = UIColor.yellow
        case "green":
            cell.backgroundColor = UIColor.green
        case "blue":
            cell.backgroundColor = UIColor.blue
        case "purple":
            cell.backgroundColor = UIColor.purple
        case "brown":
            cell.backgroundColor = UIColor.brown
        default:
            break
        }
        return cell
    }
}
