//
//  AmountView.swift
//  SwiftUICombineMVVM
//
//  Created by Nrmeen Tomoum on 13/04/2022.
//

import SwiftUI

struct AmountView: View {
    @State private var amount: String = ""
    var body: some View {
        VStack {
            HStack {
                Text("Enter amount")
                    .font(.custom("Roboto-Medium",
                                  size: 16)).padding(.leading, 28)
                Spacer()
            }
            ZStack {
                
                TextField("100.00", text: $amount) .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding([.leading,.trailing], 24)
                    .font(.custom("Roboto-Medium",
                                  size: 42))
                    .shadow(color:Color(CGColor(red: 203, green: 203, blue: 203, alpha: 1))
                            , radius: 12, x: 2, y: 2).multilineTextAlignment(.center)
                HStack {   Text("$")
                        .font(.custom("Roboto-Medium",
                                      size: 45)).padding(.leading, 45
                                      )
                    Spacer()
                }
            }
        }
    }
}

struct AmountView_Previews: PreviewProvider {
    static var previews: some View {
        AmountView()
    }
}
