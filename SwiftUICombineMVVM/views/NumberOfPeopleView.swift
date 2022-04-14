//
//  NumberOfPeopleView.swift
//  SwiftUICombineMVVM
//
//  Created by Nrmeen Tomoum on 13/04/2022.
//

import SwiftUI

struct NumberOfPeopleView: View {
    private var viewModel : TipHomeViewModel
    var counter : Double
    init(viewModel: TipHomeViewModel, counter : Double){
        self.viewModel = viewModel
        self.counter = counter
    }
    var body: some View {
        VStack {
            HStack {
                Text("How many people?")
                    .font(.custom("Roboto-Medium",
                                  size: 16)).padding(.leading, 28)
                Spacer()
            }
            ZStack {
                HStack{
                    Button(action: {
                        viewModel.addPeople()
                    }, label: {
                        Image("plus")
                            .resizable()
                            .frame(width: CGFloat(71), height: CGFloat(71))
                    }).padding(.leading, CGFloat(28))
                    Spacer()
                    
                }
                Text("\(counter)")
                    .font(.custom("Roboto-Medium",
                                  size: 45)).padding(.leading, 45
                                  )
                HStack{
                    Spacer()
                    Button(action: {
                        viewModel.removePeople()
                    }, label: {
                        Image("minus")
                            .resizable()
                            .frame(width: CGFloat(71), height: CGFloat(71))
                    }).padding(.trailing, CGFloat(24))
                }
            }.padding(.top, 16)
        }
    }
}
//
//struct NumberOfPeopleView_Previews: PreviewProvider {
//    static var previews: some View {
//        NumberOfPeopleView()
//    }
//}
