//
//  PaymentList.swift
//  SwiftUICombineMVVM
//
//  Created by Nrmeen Tomoum on 15/04/2022.
//

import SwiftUI

struct PaymentList: View {
    @ObservedObject var viewModel = PaymentViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.paymentList, id: \.self) {
                PaymentCell(paymentModel: $0)
            }.navigationBarTitle("SAVED PAYMENTS").font(.custom("Roboto-Medium",size: 16))
                .onAppear {
                   // self.viewModel.fetchPaymentList()
                }
        }
    }
}

struct PaymentList_Previews: PreviewProvider {
    static var previews: some View {
        PaymentList()
    }
}
