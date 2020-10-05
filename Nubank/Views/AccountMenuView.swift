//
//  AccountMenuView.swift
//  Nubank
//
//  Created by Raphael Cerqueira on 03/10/20.
//

import SwiftUI

struct AccountMenuView: View {
    let items = [
        AccountMenuItem(image: "questionmark.circle", title: "Me ajuda"),
        AccountMenuItem(image: "person", title: "Perfil"),
        AccountMenuItem(image: "dollarsign.circle", title: "Configurar conta"),
        AccountMenuItem(image: "creditcard", title: "Configurar Cartão"),
        AccountMenuItem(image: "gift", title: "Configurar Rewards"),
        AccountMenuItem(image: "house", title: "Pedir conta PJ"),
        AccountMenuItem(image: "iphone", title: "Configurações do app")
    ]
    
    var body: some View {
        VStack {
            Divider()
                .background(Color("accent"))
                .padding([.horizontal, .bottom])
            
            ForEach(items) { item in
                VStack {
                    HStack {
                        Button(action: {}, label: {
                            Image(systemName: item.image)
                                .font(.system(size: 24))
                            
                            Text(item.title)
                                .font(.system(size: 19, weight: .medium))
                                .padding(.leading)
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                        })
                    }
                    .padding([.horizontal, .bottom])
                    
                    Divider()
                        .background(Color("accent"))
                }
                .foregroundColor(Color("accent"))
                .padding([.leading, .bottom, .trailing])
            }
        }
    }
}

struct AccountMenuItem: Identifiable {
    let id = UUID().uuidString
    var image: String
    var title: String
}

struct AccountMenuView_Previews: PreviewProvider {
    static var previews: some View {
        AccountMenuView()
    }
}
