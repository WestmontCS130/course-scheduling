//
//  LabelView.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 12/7/20.
//

import SwiftUI

struct LabelView: View {
    
    var imageName: String
    var text: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName).foregroundColor(Color("LoginButton")).imageScale(.large)
            Text(text).font(.headline).foregroundColor(Color.blue)
        }
        .padding(.top, 30)
    }
}

struct ButtonNavView: View {
    
    var imageName: String
    var destination: AnyView
    var text: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName).foregroundColor(Color("LoginButton")).imageScale(.large)
            NavigationLink(
                destination: destination) {Text(text).font(.headline).foregroundColor(Color.blue)
            }
        }
        .padding(.top, 30)
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            LabelView(imageName: "person.fill", text: "Profile")
            ButtonNavView(imageName: "calendar.circle", destination: AnyView(ScheduleView().environmentObject(UserData())), text: "View Yearly Schedule")
        }
    }
}
