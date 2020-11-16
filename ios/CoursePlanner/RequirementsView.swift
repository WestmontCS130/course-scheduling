//
//  RequirementsView.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 11/3/20.
//

import SwiftUI

struct RequirementsView: View {
    
    @State var requirements = [Requirement]()
    
    var body: some View {
        
        ZStack {
            Rectangle().foregroundColor(Color("LoginBackground")).ignoresSafeArea()
            List{
                Section(header: Text("Requirements")) {
                    ForEach(requirements) { requirement in
                        Text(requirement.RequirementName)
                    }
                }
            }
            .onAppear {
                Api().getRequirements {(requirements) in
                self.requirements = requirements
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
