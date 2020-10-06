@_private(sourceFile: "MenuView.swift") import CoursePlanner
import SwiftUI
import SwiftUI

extension MenuView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/levinelson/Documents/GitHub/CoursePlanner/CoursePlanner/CoursePlanner/MenuView.swift", line: 45)
        AnyView(MenuView())
#sourceLocation()
    }
}

extension MenuView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/levinelson/Documents/GitHub/CoursePlanner/CoursePlanner/CoursePlanner/MenuView.swift", line: 12)
        AnyView(VStack(alignment: .leading) {
            HStack {
                Image(systemName: __designTimeString("#10383.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "person")).foregroundColor(.black).imageScale(.large)
                Text(__designTimeString("#10383.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[0].value.[0].value", fallback: "Profile")).font(.headline)
            }
            .padding(.top, __designTimeInteger("#10383.[1].[0].property.[0].[0].arg[1].value.[0].modifier[0].arg[1].value", fallback: 30))
           
            HStack {
                Image(systemName: __designTimeString("#10383.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "chevron.up.square")).foregroundColor(.black).imageScale(.large)
                Text(__designTimeString("#10383.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[1].arg[0].value.[0].value", fallback: "Upload Complete Classes")).font(.headline)
            }
            .padding(.top, __designTimeInteger("#10383.[1].[0].property.[0].[0].arg[1].value.[1].modifier[0].arg[1].value", fallback: 30))
            
            HStack {
                Image(systemName: __designTimeString("#10383.[1].[0].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[0].value", fallback: "calendar")).foregroundColor(.black).imageScale(.large)
                Text(__designTimeString("#10383.[1].[0].property.[0].[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[0].value", fallback: "View Previous Classes")).font(.headline)
            }
            .padding(.top, __designTimeInteger("#10383.[1].[0].property.[0].[0].arg[1].value.[2].modifier[0].arg[1].value", fallback: 30))
            
            HStack {
                Image(systemName: __designTimeString("#10383.[1].[0].property.[0].[0].arg[1].value.[3].arg[0].value.[0].arg[0].value.[0].value", fallback: "gear")).foregroundColor(.black).imageScale(.large)
                Text(__designTimeString("#10383.[1].[0].property.[0].[0].arg[1].value.[3].arg[0].value.[1].arg[0].value.[0].value", fallback: "Settings")).font(.headline)
            }
            .padding(.top, __designTimeInteger("#10383.[1].[0].property.[0].[0].arg[1].value.[3].modifier[0].arg[1].value", fallback: 30))
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading))
#sourceLocation()
    }
}

import struct CoursePlanner.MenuView
import struct CoursePlanner.MenuView_Previews