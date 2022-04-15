//
//  TipHomeViewModel.swift
//  SwiftUICombineMVVM
//
//  Created by Nrmeen Tomoum on 14/04/2022.
//

import Combine

class TipHomeViewModel: ObservableObject {
    @Published var paymentList: [PaymentModel] = [
        PaymentModel(dataAndTime: "2021 January 21",
                     amount: "$205.23",
                     tip: "Tip: $20.52", image: ""),
        PaymentModel(dataAndTime: "2021 January 21",
                     amount: "$205.23", tip: "Tip: $20.52",
                     image: ""),
        PaymentModel(dataAndTime: "2021 January 21",
                     amount: "$205.23", tip: "Tip: $20.52", image: "")]
    @Published var amount: String = "100.00"
    @Published var counter: Double = 1
    @Published var totalTip: String = "10.00"
    @Published var tipPerPerson: String = "10.00"
    
    func addPeople() {
        counter = counter + 1
        let total = (Double(amount) ?? 1.0) * 10/100
        tipPerPerson = "\(total / counter)"
        print(counter)
    }
    func removePeople(){
        if counter > 1 {
            counter = counter - 1
            let total = (Double(amount) ?? 1.0) * 10/100
            tipPerPerson = "\(total / counter)"
        }
    }
    func addItem(paymentModel:PaymentModel){
        paymentList.append(paymentModel)
    }
    func setAmount(amount: String){
        self.amount = amount
        let total = (Double(amount) ?? 1.0) * 10/100
        totalTip = "\(total)"
        tipPerPerson = "\(total / counter)"
    }
}
