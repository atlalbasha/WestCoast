//
//  ShowCoreseTableVC.swift
//  WestCoast
//
//  Created by Atlal Basha on 2021-02-24.
//

import UIKit
import CoreData

class ShowCourseTableVC: UITableViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var myCourse = [Courses]()
    var myUser = User()
    
    var selectedCourse = coursesCategory() {
        didSet{
//            print(selectedCourse.courseName)
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask))
    
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 4
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShowCourseCell", for: indexPath)

        // Configure the cell...
        if indexPath.section == 0 {
            cell.textLabel?.text = selectedCourse.courseName
            cell.textLabel?.textAlignment = .left
            cell.imageView?.image = UIImage(systemName: "books.vertical.fill")
            cell.selectionStyle = .none
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 22.0)
            cell.textLabel?.numberOfLines = 0
        }else if indexPath.section == 1{
            cell.textLabel?.text = selectedCourse.courseDescribe
            cell.textLabel?.textAlignment = .left
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.backgroundColor = UIColor(named: "WestBackGroundColor")
            cell.textLabel?.numberOfLines = 0
            cell.selectionStyle = .none
            
        }else if indexPath.section == 2 {
            cell.textLabel?.text = "Apply This Course"
            cell.textLabel?.textAlignment = .center
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 18.0)
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.backgroundColor = UIColor(named: "WestBackGroundColor")
            
        }else if indexPath.section == 3 {
            cell.textLabel?.text = "Cancel"
            cell.textLabel?.textAlignment = .center
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 18.0)
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.backgroundColor = UIColor(named: "WestBackGroundColor")
            
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 3 {
            dismiss(animated: true, completion: nil)
        }else if indexPath.section == 2 {
            saveCourse()
            dismiss(animated: true, completion: nil)
        }
    }
    
    func saveCourse() {
        let newCourse = Courses(context: context)
        newCourse.courseName = selectedCourse.courseName
        newCourse.courseDescription = selectedCourse.courseDescribe
//        myUser.addToUserCourses(newCourse)
        
        myCourse.append(newCourse)
        do {
            try context.save()
        }catch{
            print("Error \(error)")
        }
        
    }

}
