//
//  ShowProfileTableVC.swift
//  WestCoast
//
//  Created by Atlal Basha on 2021-02-23.
//

import UIKit

class ShowProfileTableVC: UITableViewController {
    
    var courses = ["HTML", "Swift", "Android"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 1 {
            return courses.count
        }else {
            return 1
        }
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoeprofileCell", for: indexPath)

        // Configure the cell...
       
        if indexPath.section == 0 {
            cell.textLabel?.text = "User Name"
            cell.textLabel?.textAlignment = .left
            cell.imageView?.image = UIImage(systemName: "person")
            cell.selectionStyle = .none
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 22.0)
        }else if indexPath.section == 1{
            cell.textLabel?.text = courses[indexPath.row]
            cell.textLabel?.textAlignment = .left
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 18.0)
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.backgroundColor = UIColor(named: "WestBackGroundColor")
        
        }else if indexPath.section == 2{
            cell.textLabel?.text = "Add New Course"
            cell.textLabel?.textAlignment = .center
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 18.0)
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.backgroundColor = UIColor(named: "WestBackGroundColor")
        }

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 2{
            performSegue(withIdentifier: "addSegue", sender: self)
        }
        
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1 {
            return "Your Courses"
        }else{
            return nil
        }
    }
    
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
       
        courses.remove(at: indexPath.row )
        tableView.reloadData()
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "addSegue" {
//            let VC = segue.destination as! CourseTableVC
//        }
//    }
//    
}
