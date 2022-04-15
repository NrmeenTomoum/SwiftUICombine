//
//  PaymentCell.swift
//  SwiftUICombineMVVM
//
//  Created by Nrmeen Tomoum on 15/04/2022.
//

import SwiftUI

struct PaymentCell: View {
    private var paymentModel: PaymentModel
    init(paymentModel:PaymentModel)
    {
        self.paymentModel = paymentModel
    }
    var body: some View {
        
        HStack{ VStack {
            HStack {
                Text(paymentModel.dataAndTime)
                .font(.custom("Roboto-Medium",
                          size: 16))
                Spacer()
            }
            HStack {
                Text(paymentModel.amount)
                .font(.custom("Roboto-Medium",
                              size: 24))
         
                Text("Tip: " + paymentModel.tip)
                    .font(.custom("Roboto-Medium",
                                  size: 16))
                    .padding(.leading, 22)
                    .foregroundColor(Color.init(uiColor: UIColor.init(hexaString: "#7D7D7D")))
                Spacer()
            }.padding(.top, 12)

            Spacer()
        }
        VStack {
            Image("ic_history")
                .resizable()
                .background(.orange)
                .frame(width: 53,
                       height: 53).cornerRadius(12)
            Spacer()
        }
            
        }.padding([.top,.leading], 24)
         .padding(.trailing, 26)
    }
}

struct PaymentCell_Previews: PreviewProvider {
    static var previews: some View {
        PaymentCell(paymentModel: PaymentModel(dataAndTime: "2021 January 21",
                                                amount: "$205.23", tip: "Tip: $20.52", image: ""))
    }
}
