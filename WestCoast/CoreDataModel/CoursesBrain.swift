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
        coursesCategory(courseName: "HTML and CSS", courseDescribe: "HTML AND CSS"),
        coursesCategory(courseName: "Avancerad CSS", courseDescribe: "HTML AND CSS"),
        coursesCategory(courseName: "JavaScript för nybörjare", courseDescribe: "HTML AND CSS"),
        coursesCategory(courseName: "Avancerad JavaScript och serverprogrammering", courseDescribe: "HTML AND CSS"),
        coursesCategory(courseName: "JavaScript för webben", courseDescribe: "HTML AND CSS"),
        coursesCategory(courseName: "ASP.NET Core MVC", courseDescribe: "HTML AND CSS")
    ]
    
    let programming = [
       coursesCategory(courseName: "Introduktion till Android programmering", courseDescribe: "des"),
        coursesCategory(courseName: "Avancerad Android programmering", courseDescribe: "des"),
        coursesCategory(courseName: "iOS utveckling med Objective-C", courseDescribe: "des"),
        coursesCategory(courseName: "iOS utveckling med Swift", courseDescribe: "des"),
        coursesCategory(courseName: "Design och layout för mobila enheter", courseDescribe: "des")
                      
    ]
    
    let backend = [
        
        coursesCategory(courseName: "REST Api med node.js", courseDescribe: "des"),
        coursesCategory(courseName: "Web Api med .NET Core", courseDescribe: "des")
       
    ]
    let database = [
        coursesCategory(courseName: "Administrera MS SQL Server", courseDescribe: "des"),
        coursesCategory(courseName: "Database design", courseDescribe: "des"),
        coursesCategory(courseName: "Bygga system med MongoDB", courseDescribe: "des"),
        coursesCategory(courseName: "Vad är ORM? Hur använder man ett sådant verktyg", courseDescribe: "des")
    ]
    
}

