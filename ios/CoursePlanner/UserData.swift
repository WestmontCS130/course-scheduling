//
//  UserData.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 11/20/20.
//

import Combine
import SwiftUI

class UserData: ObservableObject {
    @Published var schedule = ScheduleData
}
