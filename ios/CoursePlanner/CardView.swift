//
//  CardView.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 10/22/20.
//

import SwiftUI

struct CardView: View {
    
    var name: String
    var category: String
    var semester: String
    var year: String
    
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                Text(name).font(.title3).fontWeight(.semibold).foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/).multilineTextAlignment(.leading)
                HStack{
                    Text("Subject: " + category)
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color("LoginButton"))
                        .multilineTextAlignment(.leading)
                    Text("Semester: " + semester)
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color("LoginButton"))
                        .multilineTextAlignment(.leading)
                    Text("Year: " + year)
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color("LoginButton"))
                        .multilineTextAlignment(.leading)
                }
                    
            }.padding().overlay(RoundedRectangle(cornerRadius: 10).stroke())
        }
        .padding(.horizontal)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(name: "CS010 Design and Implementation of Solutions to Computational Problems", category: "CS", semester: "Fall", year: "2020")
    }
}
