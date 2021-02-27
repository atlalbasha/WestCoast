//
//  CoursesBrain.swift
//  WestCoast
//
//  Created by Atlal Basha on 2021-02-26.
//

import Foundation
import UIKit


struct CoursesBrain {
    
 
    
   let title = "Choose Course"
   let image = UIImage(systemName: "books.vertical.fill")
    
     let web = [
        coursesCategory(courseName: "HTML and CSS", courseDescribe: """
WestCoast Education is an education company located on the west coast just north of Gothenburg. We have been in the education industry for almost 40 years. Our business goal is and has been to provide technical training in the IT area. We have been very successful all these years. We specialize primarily in system development training in web and mobile solutions.
"""),
        coursesCategory(courseName: "Advanced CSS", courseDescribe: "HTML AND CSS"),
        coursesCategory(courseName: "JavaScript for beginners", courseDescribe: "HTML AND CSS"),
        coursesCategory(courseName: "Advanced JavaScript and server programming", courseDescribe: "HTML AND CSS"),
        coursesCategory(courseName: "JavaScript for the web", courseDescribe: "HTML AND CSS"),
        coursesCategory(courseName: "ASP.NET Core MVC", courseDescribe: "HTML AND CSS")
    ]
    
    let programming = [
       coursesCategory(courseName: "Introduction to Android programming", courseDescribe: "des"),
        coursesCategory(courseName: "Advanced Android programming", courseDescribe: "des"),
        coursesCategory(courseName: "iOS development with Objective-C", courseDescribe: "des"),
        coursesCategory(courseName: "iOS development with Swift", courseDescribe: "des"),
        coursesCategory(courseName: "Design and layout for mobile devices", courseDescribe: "des"),
        coursesCategory(courseName: "Web Api with .NET Core", courseDescribe: "des")
                      
    ]
    
    let backend = [
        
        coursesCategory(courseName: "REST Api with node.js", courseDescribe: "des"),
        coursesCategory(courseName: "Backend programming", courseDescribe: "des")
       
    ]
    let database = [
        coursesCategory(courseName: "Manage MS SQL Server", courseDescribe: "des"),
        coursesCategory(courseName: "Database design", courseDescribe: "des"),
        coursesCategory(courseName: "Build systems with MongoDB", courseDescribe: "des"),
        coursesCategory(courseName: "What is ORM? How to use such a tool", courseDescribe: "des")
    ]
    
}

