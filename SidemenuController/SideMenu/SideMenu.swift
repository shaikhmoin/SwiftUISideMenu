//
//  SideMenu.swift
//  SidemenuController
//
//  Created by macOS on 10/08/23.
//

import SwiftUI

struct SideMenu: View {
    
    @Binding var isShowing: Bool
    var content: AnyView
    var edgeTransition: AnyTransition = .move(edge: .leading)
    
    var body: some View {
        ZStack(alignment: .bottom) {
            if (isShowing) {
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing.toggle()
                    }
                content
                    .transition(edgeTransition)
                    .background(
                        Color.clear
                    )
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut, value: isShowing)
    }
}

//struct SideMenu_Previews: PreviewProvider {
//    static var previews: some View {
//        SideMenu(isShowing: $isShowing, content: <#AnyView#>)
//    }
//}
