//
//  PhotoView.swift
//  SwiftUICombineMVVM
//
//  Created by Nrmeen Tomoum on 14/04/2022.
//

import SwiftUI

struct PhotoView: View {
    @State var isSelected = false
    var body: some View {
        HStack {
            Button(action: {
                isSelected = !isSelected
            }, label: {
                Image(isSelected ? "checked" : "unchecked")
                    .resizable()
                    .frame(width: CGFloat(182), height: CGFloat(24))
            })
            Spacer()
        }.padding(.leading,24)
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(isSelected: false)
    }
}
