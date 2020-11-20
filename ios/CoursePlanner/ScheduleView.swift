//
//  ScheduleView.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 10/22/20.
//

import SwiftUI
import Foundation

struct CourseRow: View {
    let course: Course
    
    var body: some View {
        Text(course.name)
    }
}


struct ScheduleView: View {
   
    @EnvironmentObject private var userData: UserData
    
    //var index: Int
    
    var body: some View {
        
        
        NavigationView{
        ZStack {
            Rectangle().foregroundColor(Color("LoginBackground")).ignoresSafeArea()
            List {
                Section(header: Text("Years")) {
                    ForEach(userData.schedule) { year in
                        NavigationLink (
                            destination: ScheduleDetail(year: year).environmentObject(self.userData)
                        ) {
                            Text(year.name)
                        }
                    }
                    }
                }
            }
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        let userData = UserData()
        ScheduleView().environmentObject(userData)
    }
}
