//
//  FavouriteView.swift
//  SidemenuController
//
//  Created by macOS on 10/08/23.
//

import SwiftUI

struct FavouriteView: View {
    
    @Binding var presentSideMenu: Bool

    var body: some View {
        VStack{
            HStack{
                Button{
                    presentSideMenu.toggle()
                } label: {
                    Image("menu")
                        .resizable()
                        .frame(width: 32, height: 32)
                }
                Spacer()
            }
            
            Spacer()
            Text("FavouriteView")
            Spacer()
        }
        .padding(.horizontal, 24)
    }
}

struct FavouriteView_Previews: PreviewProvider {
    // we show the simulated view, not the BoolButtonView itself
    static var previews: some View {
        OtherView()
            .preferredColorScheme(.light)
    }
    
    // nested OTHER VIEW providing the one value for binding makes the trick
    private struct OtherView : View {
        
        @State var providedValue : Bool = false
        
        var body: some View {
            HomeView(presentSideMenu: $providedValue)
        }
    }
}
