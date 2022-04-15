//
//  PaymentList.swift
//  SwiftUICombineMVVM
//
//  Created by Nrmeen Tomoum on 15/04/2022.
//

import SwiftUI

struct PaymentList: View {
    @Environment(\.presentationMode) var presentationMode
    
    private var viewModel : TipHomeViewModel
    init(viewModel: TipHomeViewModel){
        self.viewModel = viewModel
    }
    
    var body: some View {
        List(viewModel.paymentList, id: \.self) {
            PaymentCell(paymentModel: $0)
        }.navigationBarTitle(Text("SAVED PAYMENTS"), displayMode: .inline).font(.custom("Roboto-Medium",size: 16))
        
            .onAppear {
                // self.viewModel.fetchPaymentList()
            }
        // Hide the system back button
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                                    Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Image("back")
                } })
    }
}

struct PaymentList_Previews: PreviewProvider {
    static var previews: some View {
        PaymentList(viewModel: TipHomeViewModel())
    }
}
