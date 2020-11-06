//
//  RegistrationView.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 10/8/20.
//

import SwiftUI

struct RegistrationView: View {
    
    @ObservedObject var viewRouter = ViewRouter()
    
    @ObservedObject var account = Account()
    
    @State var phone: String = ""
    @State var password1: String = ""
    @State var password2: String = ""
    
    @State var goodRegistration: Bool = false
    @State var badRegistration: Bool = false
    
    
    func sendAccount() {
        guard let encoded = try? JSONEncoder().encode(account) else {
            print("Failed to encode order")
            return
        }
        let url = URL(string: "https://class-scheduling-api.herokuapp.com/testing")!
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        request.httpBody = encoded
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            // handle the result here.
        }.resume()
        
    }
    
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(Color("LoginBackground")).ignoresSafeArea()
            VStack {
                    Text("Register Form")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 100.0)
                    //Divider().padding(.horizontal, 28.0)
                    Text("Register Info")
                        .font(.title).padding(.bottom, 30.0)
                VStack(alignment:.leading) {
                    Text("Phone Number")
                    TextField("XXX-XXX-XXXX", text: $phone).padding(.horizontal, 4.0).textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("Password")
                    TextField("Enter Password Here", text: $password1).padding(.horizontal, 4.0).textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("Enter Password Again")
                    TextField("Enter Password Here", text: $password2).padding(.horizontal, 4.0).textFieldStyle(RoundedBorderTextFieldStyle())
                }
                Button(action: {if (phone.count == 10) && (password1.contains(password2)) {
                    self.goodRegistration = true
                    self.badRegistration = false
                    self.account.PhoneNumber = phone
                    self.account.stringText = password1
                    self.sendAccount()
                    DispatchQueue.main.asyncAfter (deadline: .now() + 1.0) {
                        self.viewRouter.currentPage = "Login"
                    }
                } else {
                    self.badRegistration = true
                    self.goodRegistration = false
                }
                
                }) {
                    Text("Register").accentColor(.white).padding( .horizontal, 50.0).padding().background(Color("LoginButton").cornerRadius(7.0))
                }.padding(.bottom)
                
                if goodRegistration == true {
                    Text("Registration Successful")
                }
                if badRegistration == true {
                    Text("Try again")
            }
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
