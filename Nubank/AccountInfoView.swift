//
//  AccountInfoView.swift
//  Nubank
//
//  Created by Raphael Cerqueira on 03/10/20.
//

import SwiftUI

struct AccountInfoView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image("qr_code")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.white)
                    .padding(8)
                    .background(Rectangle().strokeBorder(Color.white, lineWidth: 8))
                    .padding(.top)
                
                VStack {
                    Text("Agência 0001 Conta 1234567-8")
                    
                    Text("Banco 260 - Nu Pagamentos S.A.")
                }
                .font(.system(size: 17, weight: .medium))
                .padding(.top)
            }
            .foregroundColor(Color("accent"))
            
            AccountMenuView()
                .padding(.top)
            
            Button(action: {}, label: {
                Text("SAIR DO APP")
                    .font(.system(size: 17, weight: .bold))
                    .foregroundColor(Color("accent"))
            })
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color("accent"), lineWidth: 1)
            )
            .padding(.horizontal)
            .padding(.bottom, 20)
        }
    }
}

struct AccountInfoView_Previews: PreviewProvider {
    static var previews: some View {
        AccountInfoView()
    }
}
