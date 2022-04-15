//
//  Home.swift
//  SwiftUICombineMVVM
//
//  Created by Nrmeen Tomoum on 13/04/2022.
//

import SwiftUI

struct Home: View {
    
    @ObservedObject var viewModel = TipHomeViewModel()
    
    var body: some View {
        
        NavigationView {
            VStack{
                TipNavigationView(viewModel: viewModel).padding(.top,24)
                AmountView(viewModel: viewModel).padding(.top,30)
                NumberOfPeopleView(viewModel:viewModel, counter: viewModel.counter).padding(.top,32)
                TipView().padding(.top,32)
                TotalTipView(tipPerPerson: viewModel.tipPerPerson
                             ,totalTip: viewModel.totalTip).padding(.top,32)
                PhotoView().padding(.top,32)
                    .padding(.bottom,35)
                
                Button("Save payment") {
                    self.viewModel.addItem(paymentModel: PaymentModel(dataAndTime: Data().base64EncodedString(), amount: self.viewModel.amount, tip: self.viewModel.totalTip, image: ""))
                }.font(Font.system(size: 16).bold())
                    .frame(width: 327, height: 48)
                    .padding([.leading,.trailing], 24)
                    . foregroundColor(.white)
                    .background(Color.init(UIColor(hexaString: "#F27A0A")))
                    .cornerRadius(12)
                Spacer()
            }.navigationBarHidden(true)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
