//
//  TotalTipView.swift
//  SwiftUICombineMVVM
//
//  Created by Nrmeen Tomoum on 14/04/2022.
//

import SwiftUI

struct TotalTipView: View {
    var totalTip : String = ""
    var tipPerPerson : String = ""
    init(tipPerPerson: String, totalTip : String){
        self.tipPerPerson = tipPerPerson
        self.totalTip = totalTip
    }
    var body: some View {
        VStack {
            HStack {
                Text("Total Tip")
                    .font(.custom("Roboto-Medium",
                                  size: 16)).padding(.leading, 24)
                Spacer()
                Text(totalTip)
                    .font(.custom("Roboto-Medium",
                                  size: 16)).padding(.trailing, 24)
            }.padding(.bottom, 16)
            
            HStack {
                Text("Per Person")
                    .font(.custom("Roboto-Medium",
                                  size: 24)).padding(.leading, 24)
                Spacer()
                Text(tipPerPerson)
                    .font(.custom("Roboto-Medium",
                                  size: 24)).padding(.trailing, 24)
            }
            
        }
    }
}

struct totalTipView_Previews: PreviewProvider {
    static var previews: some View {
        TotalTipView(tipPerPerson: "10.00"
                     ,totalTip: "10.00")
    }
}
