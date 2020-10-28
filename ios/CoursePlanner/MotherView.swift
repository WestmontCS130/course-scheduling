//
//  MotherView.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 10/22/20.
//

import SwiftUI
import Foundation
import Combine

class ViewRouter: ObservableObject {
    
    let objectWillChange = PassthroughSubject<ViewRouter,Never>()
    
    var currentPage: String = "Login"{
        didSet {
            objectWillChange.send(self)
        }
    }
}

struct MotherView: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack{
            if viewRouter.currentPage == "Login" {
                LoginView(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "Register" {
                RegistrationView(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "MainMenu" {
                MainMenuView(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "CS-Schedule" {
                ScheduleView()
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter())
    }
}
