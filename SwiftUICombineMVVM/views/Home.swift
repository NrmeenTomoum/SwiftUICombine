//
//  Home.swift
//  SwiftUICombineMVVM
//
//  Created by Nrmeen Tomoum on 13/04/2022.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            TipNavigationView().padding(.top,24)
            AmountView().padding(.top,30)
            NumberOfPeopleView().padding(.top,32)
            TipView().padding(.top,32)
            TotalTipView().padding(.top,32)
            PhotoView().padding(.top,32)
                .padding(.bottom,35)
                Button("Save payment") {
                    
                }.font(.custom("Roboto-Bold", size: 16))
                .frame(width: 327, height: 48)
                .padding([.leading,.trailing], 24)
                .padding(.bottom, 38)
                . foregroundColor(.white)
                .background(.orange)
                .cornerRadius(12)
            
                Spacer()
            
        }
       
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
