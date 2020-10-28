//
//  ContentView.swift
//  CoursePlanner
//
//  Created by Levi Nelson on 9/17/20.
//

import SwiftUI

struct MainMenuView: View {
    
    @ObservedObject var viewRouter = ViewRouter()
    
    @State var showMenu = false
    
    var body: some View {
        
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }
        return NavigationView {
            GeometryReader { geometry in
                ZStack(alignment: .leading){
                    if self.showMenu {
                        MenuView()
                            .frame(width: geometry.size.width/2)
                            .transition(.move(edge: .leading))
                    }
                }
                .gesture(drag)
            }
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                }
            ))
        }
        .padding(.top)
        }
    }





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
