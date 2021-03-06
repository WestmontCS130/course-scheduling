//
//  ScheduleDetail.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 11/20/20.
//

import SwiftUI

struct ScheduleDetail: View {
    @EnvironmentObject var userData: UserData
    
    var year: Year
    
    var body: some View {
        List {
            ForEach(year.semesters) { semester in
                Section(header: Text(semester.name)) {
                    ForEach(semester.courses) { course in
                        Text(course.name)
                    }
                }
            }
        }
    }
}

struct ScheduleDetail_Previews: PreviewProvider {
    static var previews: some View {
        let userData = UserData()
        return ScheduleDetail(year: userData.schedule[0]).environmentObject(userData)
    }
}
