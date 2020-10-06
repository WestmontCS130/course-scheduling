@_private(sourceFile: "ContentView.swift") import CoursePlanner
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/levinelson/Documents/GitHub/CoursePlanner/CoursePlanner/CoursePlanner/ContentView.swift", line: 71)
        AnyView(__designTimeSelection(ContentView(), "#8801.[3].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension MainView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/levinelson/Documents/GitHub/CoursePlanner/CoursePlanner/CoursePlanner/ContentView.swift", line: 59)
        AnyView(__designTimeSelection(Button(action: {
                __designTimeSelection(withAnimation {
                    self.showMenu = true
                }, "#8801.[2].[1].property.[0].[0].arg[0].value.[0]")
        }) {
            __designTimeSelection(Text(__designTimeString("#8801.[2].[1].property.[0].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Show menu")), "#8801.[2].[1].property.[0].[0].arg[1].value.[0]")
        }, "#8801.[2].[1].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/levinelson/Documents/GitHub/CoursePlanner/CoursePlanner/CoursePlanner/ContentView.swift", line: 16)
        
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    __designTimeSelection(withAnimation {
                        self.showMenu = false
                    }, "#8801.[1].[1].property.[0].[0].value.modifier[0].arg[0].value.[0].[0].[0]")
                }
            }
        return AnyView(__designTimeSelection(NavigationView{
            __designTimeSelection(GeometryReader { geometry in
                __designTimeSelection(ZStack(alignment: .leading){
                    __designTimeSelection(MainView(showMenu: __designTimeSelection(self.$showMenu, "#8801.[1].[1].property.[0].[1].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value")).frame(width: __designTimeSelection(geometry.size.width, "#8801.[1].[1].property.[0].[1].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value"), height: __designTimeSelection(geometry.size.height, "#8801.[1].[1].property.[0].[1].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[1].value"))
                        .offset(x: __designTimeSelection(self.showMenu, "#8801.[1].[1].property.[0].[1].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value.if") ? geometry.size.width/2 : __designTimeInteger("#8801.[1].[1].property.[0].[1].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value.else", fallback: 0))
                        .disabled(__designTimeSelection(self.showMenu, "#8801.[1].[1].property.[0].[1].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.if") ? __designTimeBoolean("#8801.[1].[1].property.[0].[1].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.then", fallback: true) : __designTimeBoolean("#8801.[1].[1].property.[0].[1].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.else", fallback: false)), "#8801.[1].[1].property.[0].[1].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0]")
                    if self.showMenu {
                        __designTimeSelection(MenuView()
                            .frame(width: geometry.size.width/2)
                            .transition(.move(edge: .leading)), "#8801.[1].[1].property.[0].[1].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].[0].[0]")
                    }
                }
                .gesture(__designTimeSelection(drag, "#8801.[1].[1].property.[0].[1].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value")), "#8801.[1].[1].property.[0].[1].arg[0].value.[0].arg[0].value.[0]")
            }
            .navigationBarTitle(__designTimeString("#8801.[1].[1].property.[0].[1].arg[0].value.[0].modifier[0].arg[0].value.[0].value", fallback: "Side Menu"), displayMode: .inline)
            .navigationBarItems(leading: (
                __designTimeSelection(Button(action: {
                    __designTimeSelection(withAnimation {
                        __designTimeSelection(self.showMenu.toggle(), "#8801.[1].[1].property.[0].[1].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0]")
                    }, "#8801.[1].[1].property.[0].[1].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[0].value.[0]")
                }) {
                    __designTimeSelection(Image(systemName: __designTimeString("#8801.[1].[1].property.[0].[1].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "line.horizontal.3"))
                        .imageScale(.large), "#8801.[1].[1].property.[0].[1].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0]")
                }, "#8801.[1].[1].property.[0].[1].arg[0].value.[0].modifier[1].arg[0].value.[0]")
            )), "#8801.[1].[1].property.[0].[1].arg[0].value.[0]")
        }, "#8801.[1].[1].property.[0].[1]"))
#sourceLocation()
    }
}

import struct CoursePlanner.ContentView
import struct CoursePlanner.MainView
import struct CoursePlanner.ContentView_Previews