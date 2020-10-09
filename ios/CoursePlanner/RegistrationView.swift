//
//  RegistrationView.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 10/8/20.
//

import SwiftUI

struct RegistrationView: View {
    
    @State var phone: String = ""
    @State var password1: String = ""
    @State var password2: String = ""
    
    func goodPass(password1: String, password2: String) -> Bool {
        if password1 {
            <#code#>
        }
    }
    
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(Color("LoginBackground")).ignoresSafeArea()
            VStack {
                VStack(spacing: 2.0) {
                    Text("Course Planner")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                    Divider().padding(.horizontal, 28.0)
                    Text("Create Your Own Path")
                        .font(.title)
                }
                .padding(.bottom, 30.0)
                VStack(alignment:.leading) {
                    Text("Phone Number")
                    TextField("XXX-XXX-XXXX", text: $phone).padding(.horizontal, 4.0).textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("Password")
                    TextField("Enter Password Here", text: $password1).padding(.horizontal, 4.0).textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("Enter Password Again")
                    TextField("Enter Password Here", text: $password2).padding(.horizontal, 4.0).textFieldStyle(RoundedBorderTextFieldStyle())
                }
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Register").accentColor(.white).padding( .horizontal, 50.0).padding().background(Color("LoginButton").cornerRadius(7.0))
                }
            }
            .padding(.bottom)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
