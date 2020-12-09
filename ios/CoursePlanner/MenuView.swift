//
//  MenuView.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 9/17/20.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            LabelView(imageName: "person.fill", text: "Profile")
           
            LabelView(imageName: "chevron.up.square", text: "Upload Complete Classes")
            
            LabelView(imageName: "calendar", text: "View Previous Classes")
            
            LabelView(imageName: "gear", text: "Settings")
            
            
            ButtonNavView(imageName: "calendar.circle", destination: AnyView(ScheduleView().environmentObject(UserData())), text: "View Yearly Schedule")
            
            ButtonNavView(imageName: "calendar.circle", destination: AnyView(RequirementsView()), text: "View Requirements")

            Spacer()
        }
        .padding(.leading, 130)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}


