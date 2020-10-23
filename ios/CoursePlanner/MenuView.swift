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
            HStack {
                Image(systemName: "person").foregroundColor(Color("LoginButton")).imageScale(.large)
                Text("Profile").font(.headline)
            }
            .padding(.top, 30)
           
            HStack {
                Image(systemName: "chevron.up.square").foregroundColor(Color("LoginButton")).imageScale(.large)
                Text("Upload Complete Classes").font(.headline)
            }
            .padding(.top, 30)
            
            HStack {
                Image(systemName: "calendar").foregroundColor(Color("LoginButton")).imageScale(.large)
                Text("View Previous Classes").font(.headline)
            }
            .padding(.top, 30)
            
            HStack {
                Image(systemName: "gear").foregroundColor(Color("LoginButton")).imageScale(.large)
                Text("Settings").font(.headline)
            }
            .padding(.top, 30)
            
            HStack {
                Image(systemName: "calendar.circle").foregroundColor(Color("LoginButton")).imageScale(.large)
                NavigationLink(
                    destination: ScheduleView()) {Text("View Westmont CS Schedule").font(.headline)
                }
            }
            .padding(.top, 30)

            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
