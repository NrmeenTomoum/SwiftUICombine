//
//  PaymentViewModel.swift
//  SwiftUICombineMVVM
//
//  Created by Nrmeen Tomoum on 15/04/2022.
//
import Combine

class PaymentViewModel: ObservableObject {
    @Published var paymentList: [PaymentModel] = [
        PaymentModel(dataAndTime: "2021 January 21",
                     amount: "$205.23",
                     tip: "Tip: $20.52", image: ""),
        PaymentModel(dataAndTime: "2021 January 21",
                     amount: "$205.23", tip: "Tip: $20.52",
                     image: ""),
        PaymentModel(dataAndTime: "2021 January 21",
                     amount: "$205.23", tip: "Tip: $20.52", image: "")]
    
}
