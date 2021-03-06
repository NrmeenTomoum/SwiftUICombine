//
//  TipNavigation.swift
//  SwiftUICombineMVVM
//
//  Created by Nrmeen Tomoum on 13/04/2022.
//

import SwiftUI


struct TipNavigationView: View {
    private var viewModel : TipHomeViewModel
    init(viewModel: TipHomeViewModel){
        self.viewModel = viewModel
    }
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Image("TipJar Logo")
                        .resizable()
                        .frame(width: 114,
                               height: 29)
                }
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        NavigationLink(destination: PaymentList(viewModel: self.viewModel)) {
                            Image("ic_history")
                                .resizable()
                                .frame(width: CGFloat(24), height: CGFloat(24))
                        }
                        
                    }).padding(.trailing, CGFloat(24))
                }
            }
        }
    }
}

struct TipNavigation_Previews: PreviewProvider {
    static var previews: some View {
        TipNavigationView(viewModel: TipHomeViewModel())
    }
}
