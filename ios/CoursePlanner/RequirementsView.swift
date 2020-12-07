//
//  RequirementsView.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 11/3/20.
//

import SwiftUI
import Network


struct RequirementsView: View {
    
    @State var requirements = [Requirement]()
    
    
    func monitorNetwork(){
        let monitor = NWPathMonitor()

        monitor.pathUpdateHandler = { path in
            if path.status == .satisfied {
                print("We're connected!")
            } else {
                print("No connection.")
            }

            print(path.isExpensive)
        }
    }
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
