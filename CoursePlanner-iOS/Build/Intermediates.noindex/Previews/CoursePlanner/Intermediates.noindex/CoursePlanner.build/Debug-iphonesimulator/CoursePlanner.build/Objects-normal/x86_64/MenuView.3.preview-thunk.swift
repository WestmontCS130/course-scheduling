@_private(sourceFile: "MenuView.swift") import CoursePlanner
import SwiftUI
import SwiftUI

extension MenuView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/levinelson/Documents/GitHub/CoursePlanner/CoursePlanner/CoursePlanner/MenuView.swift", line: 45)
        AnyView(__designTimeSelection(MenuView(), "#10383.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension MenuView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/levinelson/Documents/GitHub/CoursePlanner/CoursePlanner/CoursePlanner/MenuView.swift", line: 12)
        AnyView(__designTimeSelection(VStack(alignment: .leading) {
            __designTimeSelection(HStack {
                __designTimeSelection(Image(systemName: __designTimeString("#10383.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "person")).foregroundColor(.black).imageScale(.large), "#10383.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0]")
                __designTimeSelection(Text(__designTimeString("#10383.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[0].value.[0].value", fallback: "Profile")).font(.headline), "#10383.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[1]")
            }
            .padding(.top, __designTimeInteger("#10383.[1].[0].property.[0].[0].arg[1].value.[0].modifier[0].arg[1].value", fallback: 30)), "#10383.[1].[0].property.[0].[0].arg[1].value.[0]")
           
            __designTimeSelection(HStack {
                __designTimeSelection(Image(systemName: __designTimeString("#10383.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "chevron.up.square")).foregroundColor(.black).imageScale(.large), "#10383.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[0]")
                __designTimeSelection(Text(__designTimeString("#10383.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[1].arg[0].value.[0].value", fallback: "Upload Complete Classes")).font(.headline), "#10383.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[1]")
            }
            .padding(.top, __designTimeInteger("#10383.[1].[0].property.[0].[0].arg[1].value.[1].modifier[0].arg[1].value", fallback: 30)), "#10383.[1].[0].property.[0].[0].arg[1].value.[1]")
            
            __designTimeSelection(HStack {
                __designTimeSelection(Image(systemName: __designTimeString("#10383.[1].[0].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[0].value", fallback: "calendar")).foregroundColor(.black).imageScale(.large), "#10383.[1].[0].property.[0].[0].arg[1].value.[2].arg[0].value.[0]")
                __designTimeSelection(Text(__designTimeString("#10383.[1].[0].property.[0].[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[0].value", fallback: "View Previous Classes")).font(.headline), "#10383.[1].[0].property.[0].[0].arg[1].value.[2].arg[0].value.[1]")
            }
            .padding(.top, __designTimeInteger("#10383.[1].[0].property.[0].[0].arg[1].value.[2].modifier[0].arg[1].value", fallback: 30)), "#10383.[1].[0].property.[0].[0].arg[1].value.[2]")
            
            __designTimeSelection(HStack {
                __designTimeSelection(Image(systemName: __designTimeString("#10383.[1].[0].property.[0].[0].arg[1].value.[3].arg[0].value.[0].arg[0].value.[0].value", fallback: "gear")).foregroundColor(.black).imageScale(.large), "#10383.[1].[0].property.[0].[0].arg[1].value.[3].arg[0].value.[0]")
                __designTimeSelection(Text(__designTimeString("#10383.[1].[0].property.[0].[0].arg[1].value.[3].arg[0].value.[1].arg[0].value.[0].value", fallback: "Settings")).font(.headline), "#10383.[1].[0].property.[0].[0].arg[1].value.[3].arg[0].value.[1]")
            }
            .padding(.top, __designTimeInteger("#10383.[1].[0].property.[0].[0].arg[1].value.[3].modifier[0].arg[1].value", fallback: 30)), "#10383.[1].[0].property.[0].[0].arg[1].value.[3]")
            __designTimeSelection(Spacer(), "#10383.[1].[0].property.[0].[0].arg[1].value.[4]")
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading), "#10383.[1].[0].property.[0].[0]"))
#sourceLocation()
    }
}

import struct CoursePlanner.MenuView
import struct CoursePlanner.MenuView_Previews