//
//  NavigationView.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 10/8/20.
//

import SwiftUI

struct NavigationViewer: View {
    var body: some View {
        return NavigationView {
            LoginView()
            
       }
    }
}

struct NavigationViewer_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewer()
    }
}
