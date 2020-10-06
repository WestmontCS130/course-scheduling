@_private(sourceFile: "ContentView.swift") import CoursePlanner
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/levinelson/Documents/GitHub/CoursePlanner/CoursePlanner/CoursePlanner/ContentView.swift", line: 71)
        AnyView(ContentView())
#sourceLocation()
    }
}

extension MainView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/levinelson/Documents/GitHub/CoursePlanner/CoursePlanner/CoursePlanner/ContentView.swift", line: 59)
        AnyView(Button(action: {
                withAnimation {
                    self.showMenu = true
                }
        }) {
            Text(__designTimeString("#8801.[2].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Show menu"))
        })
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/levinelson/Documents/GitHub/CoursePlanner/CoursePlanner/CoursePlanner/ContentView.swift", line: 16)
        
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }
        return AnyView(NavigationView{
            GeometryReader { geometry in
                ZStack(alignment: .leading){
                    MainView(showMenu: self.$showMenu).frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.showMenu ? geometry.size.width/2 : __designTimeInteger("#8801.[1].[1].property.[0].[1].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value.else", fallback: 0))
                        .disabled(self.showMenu ? __designTimeBoolean("#8801.[1].[1].property.[0].[1].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.then", fallback: true) : __designTimeBoolean("#8801.[1].[1].property.[0].[1].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.else", fallback: false))
                    if self.showMenu {
                        MenuView()
                            .frame(width: geometry.size.width/2)
                            .transition(.move(edge: .leading))
                    }
                }
                .gesture(drag)
            }
            .navigationBarTitle(__designTimeString("#8801.[1].[1].property.[0].[1].arg[0].value.[0].modifier[0].arg[0].value.[0].value", fallback: "Side Menu"), displayMode: .inline)
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }) {
                    Image(systemName: __designTimeString("#8801.[1].[1].property.[0].[1].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "line.horizontal.3"))
                        .imageScale(.large)
                }
            ))
        })
#sourceLocation()
    }
}

import struct CoursePlanner.ContentView
import struct CoursePlanner.MainView
import struct CoursePlanner.ContentView_Previews