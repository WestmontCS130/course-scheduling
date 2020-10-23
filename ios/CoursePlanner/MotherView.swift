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
                MainMenuView()
            }
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter())
    }
}
