//
//  ViewController.swift
//  Friends
//
//  Created by Ruhsane Sawut on 4/17/19.
//  Copyright © 2019 ruhsane. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    var people: [NSManagedObject] = []
    
    @IBOutlet weak var friendsTableView: UITableView!
    
    @IBAction func addButton(_ sender: Any) {
        let alert = UIAlertController(title: "New Friend", message: "Add the name of your friend", preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Add Now", style: .default) { [unowned self] action in
            
            guard let textField = alert.textFields?.first, let nameToSave = textField.text else { return }
            self.save(name: nameToSave)
            self.friendsTableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        alert.addTextField()
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Friends"
        friendsTableView.dataSource = self
        friendsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        self.fetch()
    }

    func save(name: String) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        
        // 1 reference managed object context
        let managedContext = appDelegate.persistentContainer.viewContext
        
        // 2 create new NSManagedObject
        let entity = NSEntityDescription.entity(forEntityName: "Person",
                                                in: managedContext)!
        
        let person = NSManagedObject(entity: entity,
                                     insertInto: managedContext)
        
        // 3
        person.setValue(name, forKeyPath: "name")
        
        // 4
        do {
            try managedContext.save()
            people.append(person)
        } catch let error as NSError {
            print(error.userInfo)
        }
    }
    
    func fetch() {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        
        // 1 reference managed object context
        let managedContext = appDelegate.persistentContainer.viewContext
        
        //2
        let fetchRequest =
            NSFetchRequest<NSManagedObject>(entityName: "Person")
        
        //3
        do {
            people = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }

}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)  -> UITableViewCell {
        
        let person = people[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = person.value(forKeyPath: "name") as? String
        return cell
        
        
    }
}
