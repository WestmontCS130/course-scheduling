//
//  RegistrationView.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 10/8/20.
//

import SwiftUI

extension String {
    
    //Checks to see if string matches a phone number
    // got from stackOverflow
    var isPhoneNumber: Bool {
        do {
            let detector = try NSDataDetector(types: NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
            let matches = detector.matches(in: self, options: [], range: NSRange(location: 0, length: self.count))
            if let res = matches.first {
                return res.resultType == .phoneNumber && res.range.location == 0 && res.range.length == self.count
            } else {
                return false
            }
        } catch {
            return false
        }
    }
}

class Register {
    let phone: String
    let password1: String
    let password2: String
    
    init(phone: String, password1: String, password2: String) {
        self.phone = phone
        self.password1 = password1
        self.password2 = password2
    }
    
    
    func isGoodRegistration() -> Bool {
        return phone.isPhoneNumber && (password1.contains(password2))
    }
}

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
