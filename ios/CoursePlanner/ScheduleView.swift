//
//  ScheduleView.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 10/22/20.
//

import SwiftUI
import Foundation

struct CourseSchedule: Identifiable{
    var name: String
    //var category: String
    var id = UUID()
}

struct CourseRow: View {
    let course: CourseSchedule
    
    var body: some View {
        Text(course.name)
    }
}

struct ScheduleView: View {
    //let courses = Bundle.main.decode([CourseSchedule].self, from: "CourseData.json")

    
    var body: some View {
        
        //Fall 2020
        let first = CourseSchedule(name: "CS010 Design and Implementation of Solutions to Computational Problems")
        let second = CourseSchedule(name: "CS015 Discrete Mathematics")
        let third = CourseSchedule(name: "Old Testament")
        
        // Spring 2021
        let fourth = CourseSchedule(name: "CS030 Abstract Models for Concrete Problems Using Java")
        let fifth = CourseSchedule(name: "Physical Education Activity")
        let sixth = CourseSchedule(name: "World History in Christian Perspective")
        let seventh = CourseSchedule(name: "Reading Imaginative Literature")
        
        let fallCourses = [first, second, third]
        
        let springCourses = [fourth, fifth, sixth, seventh]
        
        
        ZStack {
            Rectangle().foregroundColor(Color("LoginBackground")).ignoresSafeArea()
            List {
                Section(header: Text("Fall 2020")) {
                    ForEach(fallCourses) { item in
                        CourseRow(course: item)
                    }
                }
                Section(header: Text("Spring 2021")) {
                        ForEach(springCourses) { item in
                            CourseRow(course: item)
                        }
                }
            }

                //CardView(name: "CS010 Design and Implementation of Solutions to Computational Problems", category: "CS", semester: "Fall", year: "2020")
               // CardView(name: "CS015 Discrete Mathematics", category: "CS", semester: "Fall", year: "2020")
              //  CardView(name: "CS030 Abstract Models for Concrete Problems Using Java ", category: "CS", semester: "Spring", year: "2021")
              //  CardView(name: "Physical Education Activity", category: "PEA", semester: "Spring", year: "2021")
              //  CardView(name: "Old Testament", category: "RS", semester: "Fall", year: "2020")
               // CardView(name: "World History in Christian Perspective", category: "HIS", semester: "Spring", year: "2021")
               // CardView(name: "Reading Imaginative Literature", category: "ENG", semester: "Spring", year: "2021")
            }
        }
    }

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
