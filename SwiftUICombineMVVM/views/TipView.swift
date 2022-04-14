//
//  TipView.swift
//  SwiftUICombineMVVM
//
//  Created by Nrmeen Tomoum on 14/04/2022.
//

import SwiftUI

struct TipView: View {
    @State private var amount: String = "10"
    
    var body: some View {
        VStack {
            HStack {
                Text("%TIP")
                    .font(.custom("Roboto-Medium",
                                  size: 16)).padding(.leading, 28)
                Spacer()
            }
            ZStack {
                
                TextField("10", text: $amount) .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding([.leading,.trailing], 24)
                    .font(.custom("Roboto-Medium",
                                  size: 42))
                    .shadow (color:Color(CGColor(red: 203, green: 203, blue: 203, alpha: 1))
                             , radius: 12, x: 2, y: 2).multilineTextAlignment(.center)
                HStack {
                    Spacer()
                    Text("%")
                        .font(.custom("Roboto-Medium",
                                      size: 24)).padding(.trailing, 35
                                      )
                    
                }
            }
        }
    }
}

struct TipView_Previews: PreviewProvider {
    static var previews: some View {
        TipView()
    }
}
