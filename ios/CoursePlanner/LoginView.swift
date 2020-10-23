//
//  LoginView.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 10/6/20.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    
    @State var phone: String = ""
    @State var password: String = ""
    
    @State var registerLink: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Rectangle().foregroundColor(Color("LoginBackground")).ignoresSafeArea()
                VStack(alignment: .center) {
                    VStack(spacing: 2.0) {
                        Text("Course Planner")
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                        Divider().padding(.horizontal, 28.0)
                        Text("Create Your Own Path")
                            .font(.title)
                    }.padding(.bottom, 70.0).padding(.top, 25.0)

                    
                    Text("Don't have an account?")
                        .font(.headline)
                    Button(action: {self.viewRouter.currentPage = "Register"} ) {
                        Text("Register").accentColor(.white).padding( .horizontal, 50.0).padding().background(Color("LoginButton").cornerRadius(7.0))
                    }
                    Divider().padding(.horizontal, 28.0)
                    //Spacer()
                    Text("Already registered?").font(.headline).padding()
                    VStack(alignment:.leading) {
                        Text("Phone Number")
                        TextField("XXX-XXX-XXXX", text: $phone).padding(.horizontal, 4.0).textFieldStyle(RoundedBorderTextFieldStyle())
                        Text("Password")
                        TextField("Enter Password Here", text: $password).padding(.horizontal, 4.0).textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    Button(action: {self.viewRouter.currentPage = "MainMenu"}) {
                        Text("Login").accentColor(.white).padding( .horizontal, 50.0).padding().background(Color("LoginButton").cornerRadius(7.0))
                    }.padding(.bottom, 50)
                }
                .padding(.all)
                .frame(width: geometry.size.width, height: geometry.size.height)
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewRouter: ViewRouter())
    }
}
