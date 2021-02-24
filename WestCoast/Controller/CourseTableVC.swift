//
//  CourseTableVC.swift
//  WestCoast
//
//  Created by Atlal Basha on 2021-02-23.
//

import UIKit

class CourseTableVC: UITableViewController {

    var Webbutveckling = ["HTML och CSS",
                          "Avancerad CSS",
                          "JavaScript för nybörjare",
                          "Avancerad JavaScript och serverprogrammering",
                          "JavaScript för webben",
                          "ASP.NET Core MVC"]
    
    var Programming = [ "Introduktion till Android programmering",
                        "Avancerad Android programmering",
                        "iOS utveckling med Objective-C",
                        "iOS utveckling med Swift",
                       "Design och layout för mobila enheter"
    ]
    
    var Backend = ["REST Api med node.js",
                   "Web Api med .NET Core"
    ]
    var Database = ["Administrera MS SQL Server",
                    "Database design",
                    "Bygga system med MongoDB",
                    "Vad är ORM? Hur använder man ett sådant verktyg"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 4
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 1 {
            return Webbutveckling.count
        }else if section == 2 {
            return Programming.count
        }else if section == 3 {
            return Backend.count
        }else if section == 4 {
            return Database.count
        }else {
            return 1
        }
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CourseCell", for: indexPath)

        // Configure the cell...
       
        if indexPath.section == 0 {
            cell.textLabel?.text = "Choice Course"
            cell.textLabel?.textAlignment = .left
            cell.imageView?.image = UIImage(systemName: "books.vertical.fill")
            cell.selectionStyle = .none
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 22.0)
            
        }else if indexPath.section == 1{
            cell.textLabel?.text = Webbutveckling[indexPath.row]
            cell.textLabel?.textAlignment = .left
            
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.backgroundColor = UIColor(named: "WestBackGroundColor")
            
        }else if indexPath.section == 2{
            
            cell.textLabel?.text = Programming[indexPath.row]
            cell.textLabel?.textAlignment = .left
            
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.backgroundColor = UIColor(named: "WestBackGroundColor")
            
        }else if indexPath.section == 3{
            
            cell.textLabel?.text = Backend[indexPath.row]
            cell.textLabel?.textAlignment = .left
            
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.backgroundColor = UIColor(named: "WestBackGroundColor")
            
        }else if indexPath.section == 4{
            
            cell.textLabel?.text = Database[indexPath.row]
            cell.textLabel?.textAlignment = .left
           
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.backgroundColor = UIColor(named: "WestBackGroundColor")
            
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
                VC.selectedCourse = Webbutveckling[indexPath.row]
                
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
