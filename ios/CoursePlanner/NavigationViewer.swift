//
//  NavigationView.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 10/8/20.
//

import SwiftUI

struct NavigationViewer: View {
    
   // @Binding var registerLink: Bool
    
    var body: some View {
        return NavigationView {
            LoginView()
           // if self.registerLink {
           //     RegistrationView()
           // }
            
       }
    }
}

struct NavigationViewer_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewer()
    }
}
