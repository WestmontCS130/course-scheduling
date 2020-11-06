//
//  CoursePlannerApp.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 9/17/20.
//

import SwiftUI

@main
struct CoursePlannerApp: App {
    var body: some Scene {
        WindowGroup {
            MotherView(viewRouter: ViewRouter())
        }
    }
}
