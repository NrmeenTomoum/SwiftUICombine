//
//  NumberOfPeopleView.swift
//  SwiftUICombineMVVM
//
//  Created by Nrmeen Tomoum on 13/04/2022.
//

import SwiftUI

struct NumberOfPeopleView: View {
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
                    
                }, label: {
                    Image("plus")
                        .resizable()
                        .frame(width: CGFloat(71), height: CGFloat(71))
                }).padding(.leading, CGFloat(28))
                Spacer()

                }
                Text("1")
                        .font(.custom("Roboto-Medium",
                                      size: 45)).padding(.leading, 45
                                      )
                HStack{
                    Spacer()
                Button(action: {
                    
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

struct NumberOfPeopleView_Previews: PreviewProvider {
    static var previews: some View {
        NumberOfPeopleView()
    }
}
