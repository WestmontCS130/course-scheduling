//
//  RequirementsView.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 11/3/20.
//

import SwiftUI

struct RequirementsView: View {
    
    @ObservedObject var requirements = Requirements()
    
    // HTTP Request of major requirements
    func recieveRequirements() {
        guard let url = URL(string: "https://class-scheduling-api.herokuapp.com/requirements") else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
        }.resume()
    }
    
    var body: some View {
        
        let requirements = ["CS 10", "CS 15", "CS 30"]
            
        ZStack {
            Rectangle().foregroundColor(Color("LoginBackground")).ignoresSafeArea()
            List {
                Section(header: Text("Requirements")) {
                    Text(requirements[0])
                    Text(requirements[1])
                    Text(requirements[2])

                }
            }
    }
}
}

struct RequirementsView_Previews: PreviewProvider {
    static var previews: some View {
        RequirementsView()
    }
}
