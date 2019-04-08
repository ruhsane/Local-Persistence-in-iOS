//
//  ViewController.swift
//  PracticePlist
//
//  Created by Ruhsane Sawut on 4/3/19.
//  Copyright © 2019 ruhsane. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
//    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
//        return ["Highest Scores 🚀"]
//    }
//
    
    var names = [String]()
    var scores = [String]()
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "highScore", for: indexPath) as! ScoreTableViewCell

        cell.scoreLabel.text = scores[indexPath.row]
        cell.nameLabel.text = names[indexPath.row]
        
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        getContent()
    }

    func getContent() {
    
        var format = PropertyListSerialization.PropertyListFormat.xml
        var data: [String:AnyObject] = [:]
        let path:String? = Bundle.main.path(forResource: "PlistData", ofType: "plist")!
        let xmlContents = FileManager.default.contents(atPath: path!)!
        do {
            data = try PropertyListSerialization.propertyList(from: xmlContents, options: .mutableContainersAndLeaves, format: &format) as! [String:AnyObject]
            //data is availale now
            let allItems = data["Scores"] as! [[String: String]]
            for item in allItems {
                names.append(item["Name"] as! String )
                scores.append(item["Score"] as! String )
            }
        }
        catch {
            print("Error reading plist: \(error)")
        }

    }

}

