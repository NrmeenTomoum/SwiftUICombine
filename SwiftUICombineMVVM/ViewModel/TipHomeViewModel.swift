//
//  TipHomeViewModel.swift
//  SwiftUICombineMVVM
//
//  Created by Nrmeen Tomoum on 14/04/2022.
//

import Combine
import SwiftUI

class TipHomeViewModel: ObservableObject {
    
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
    func setAmount(amount: String){
        self.amount = amount
        let total = (Double(amount) ?? 1.0) * 10/100
        totalTip = "\(total)"
        tipPerPerson = "\(total / counter)"
    }
}
