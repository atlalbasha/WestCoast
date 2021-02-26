//
//  CourseTableVC.swift
//  WestCoast
//
//  Created by Atlal Basha on 2021-02-23.
//

import UIKit
import CoreData

class CourseTableVC: UITableViewController {
    
    
    var coursesBrain = CoursesBrain()
    
   override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 5
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 1 {
            return coursesBrain.web.count
        }else if section == 2 {
            return coursesBrain.programming.count
        }else if section == 3 {
            return coursesBrain.backend.count
        }else if section == 4 {
            return coursesBrain.database.count
        }else {
            return 1
        }
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CourseCell", for: indexPath)
        
        // prepare cell to reuse
        cell.textLabel?.text = nil
        cell.imageView?.image = nil
        cell.textLabel?.textColor = nil
        cell.textLabel?.font = nil
       
        cell.textLabel?.textAlignment = .left
        cell.textLabel?.textColor = UIColor(named: "WestTextColor")
        cell.backgroundColor = UIColor(named: "WestBackGroundColor")

        // Configure the cell...
       
        if indexPath.section == 0 {
            
            // prepare cell to reuse
            cell.textLabel?.textColor = nil
            cell.backgroundColor = nil
            
            cell.textLabel?.text = coursesBrain.title
            cell.textLabel?.textAlignment = .left
            cell.imageView?.image = coursesBrain.image
            cell.selectionStyle = .none
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 22.0)
            
        }else if indexPath.section == 1{
            cell.textLabel?.text = coursesBrain.web[indexPath.row].courseName
            
            
        }else if indexPath.section == 2{
            
            cell.textLabel?.text = coursesBrain.programming[indexPath.row].courseName
          
            
        }else if indexPath.section == 3{
            
            cell.textLabel?.text = coursesBrain.backend[indexPath.row].courseName

            
        }else if indexPath.section == 4{
            
            cell.textLabel?.text = coursesBrain.database[indexPath.row].courseName
 
        }
        

        return cell
    }
    
  
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "ShowCourseSegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowCourseSegue"{
            let VC = segue.destination as! ShowCourseTableVC
            if let indexPath = tableView.indexPathForSelectedRow {
                if indexPath.section == 1 {
                    VC.selectedCourse = coursesBrain.web[indexPath.row]
                }else if indexPath.section == 2 {
                    VC.selectedCourse = coursesBrain.programming[indexPath.row]
                }else if indexPath.section == 3 {
                    VC.selectedCourse = coursesBrain.backend[indexPath.row]
                }else if indexPath.section == 4 {
                    VC.selectedCourse = coursesBrain.database[indexPath.row]
                }
                
                
            }
            
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1 {
            return "Webbutveckling"
        }else if section == 2{
            return "Programming for Mobil"
        }else if section == 3{
            return "Backend programming"
        }else if section == 4{
            return "Database"
        }else {
            return nil
        }
    }
    
   
    
   
    
}
