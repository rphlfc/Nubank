//
//  MainMenuView.swift
//  Nubank
//
//  Created by Raphael Cerqueira on 03/10/20.
//

import SwiftUI

struct MainMenuView: View {
    let items = [
        AccountMenuItem(image: "barcode", title: "Pagar"),
        AccountMenuItem(image: "dollarsign.circle", title: "Transferir"),
        AccountMenuItem(image: "dollarsign.circle", title: "Depositar"),
        AccountMenuItem(image: "person.badge.plus", title: "Indicar\namigos"),
        AccountMenuItem(image: "dollarsign.circle", title: "Empréstimos"),
        AccountMenuItem(image: "creditcard", title: "Cartão\nVirtual"),
        AccountMenuItem(image: "iphone", title: "Recarga de\ncelular"),
        AccountMenuItem(image: "slider.horizontal.3", title: "Ajustar\nlimite"),
        AccountMenuItem(image: "lock.open", title: "Bloquear\ncartão"),
        AccountMenuItem(image: "lock.open", title: "Bloquear\ncartão"),
        AccountMenuItem(image: "dollarsign.circle", title: "Cobrar"),
        AccountMenuItem(image: "dollarsign.circle", title: "Doação"),
        AccountMenuItem(image: "questionmark.circle", title: "Me ajuda")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                ForEach(items) { item in
                    Button(action: {}, label: {
                        HStack {
                            VStack(alignment: .leading) {
                                Image(systemName: item.image)
                                    .font(.system(size: 32))
                                
                                Text(item.title)
                                    .font(.system(size: 17, weight: .medium))
                                    .padding(.top, 50)
                            }
                            
                            Spacer()
                        }
                        .padding()
                        .frame(width: 130)
                        .foregroundColor(Color("accent"))
                        .background(Color(#colorLiteral(red: 0.5967729092, green: 0.1358564198, blue: 0.7765894532, alpha: 1)))
                        .cornerRadius(8)
                    })
                }
            }
            .padding(.horizontal)
        }
        .background(Color("background"))
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
