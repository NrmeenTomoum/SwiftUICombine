//
//  TotalTipView.swift
//  SwiftUICombineMVVM
//
//  Created by Nrmeen Tomoum on 14/04/2022.
//

import SwiftUI

struct TotalTipView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Total Tip")
                    .font(.custom("Roboto-Medium",
                                  size: 16)).padding(.leading, 24)
                Spacer()
                Text("$10.00")
                    .font(.custom("Roboto-Medium",
                                  size: 16)).padding(.trailing, 24)
            }.padding(.bottom, 16)
        
            HStack {
                Text("Per Person")
                    .font(.custom("Roboto-Medium",
                                  size: 24)).padding(.leading, 24)
                Spacer()
                Text("$10.00")
                    .font(.custom("Roboto-Medium",
                                  size: 24)).padding(.trailing, 24)
            }

        }
    }
}

struct totalTipView_Previews: PreviewProvider {
    static var previews: some View {
        TotalTipView()
    }
}
