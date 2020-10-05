//
//  BalanceView.swift
//  Nubank
//
//  Created by Raphael Cerqueira on 03/10/20.
//

import SwiftUI

struct BalanceView: View {
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    HStack {
                        VStack(alignment: .leading) {
                            HStack {
                                Image(systemName: "creditcard")
                                
                                Text("Cartão de Crédito")
                                    .padding(.leading)
                            }
                            .font(.system(size: 20))
                            .foregroundColor(Color("primary"))
                            
                            Text("Fatura atual")
                                .foregroundColor(Color("primary"))
                                .padding(.top)
                            
                            
                            Text("R$ 1.234,56")
                                .font(.system(size: 28, weight: .bold))
                                .foregroundColor(Color("secondary"))
                                .padding(.top)
                            
                            HStack {
                                Text("Limite disponível")
                                
                                Text("R$ 123,45")
                                    .font(.system(size: 17, weight: .bold))
                                    .foregroundColor(Color("tertiary"))
                            }
                            .padding(.top, 2)
                        }
                        
                        Spacer()
                    }
                    .padding(30)
                    .frame(maxWidth: .infinity)
                    .background(Color("accent"))
                    .cornerRadius(8)
                    
                    HStack {
                        VStack(alignment: .leading) {
                            HStack {
                                Image(systemName: "dollarsign.circle")
                                
                                Text("Conta")
                                    .padding(.leading)
                            }
                            .font(.system(size: 20))
                            .foregroundColor(Color("primary"))
                            
                            Text("Saldo disponível")
                                .foregroundColor(Color("primary"))
                                .padding(.top)
                            
                            
                            Text("R$ 1.234,56")
                                .font(.system(size: 28, weight: .bold))
                                .foregroundColor(Color("quaternary"))
                                .padding(.top)
                        }
                        
                        Spacer()
                    }
                    .padding(30)
                    .frame(maxWidth: .infinity)
                    .background(Color("accent"))
                    .cornerRadius(8)
                    
                    HStack {
                        VStack(alignment: .leading) {
                            HStack {
                                Image(systemName: "gift")
                                
                                Text("Rewards")
                                    .padding(.leading)
                            }
                            .font(.system(size: 20))
                            .foregroundColor(Color("primary"))
                            
                            Text("Total")
                                .foregroundColor(Color("primary"))
                                .padding(.top)
                            
                            
                            Text("428 pts")
                                .font(.system(size: 28, weight: .bold))
                                .foregroundColor(Color("quaternary"))
                                .padding(.top)
                            
                            HStack {
                                Text("Você acumulou")
                                
                                Text("1.234")
                                    .font(.system(size: 17, weight: .bold))
                                    .foregroundColor(Color("tertiary"))
                                
                                Text("pontos este mês.")
                            }
                            .padding(.top, 2)
                        }
                        
                        Spacer()
                    }
                    .padding(30)
                    .frame(maxWidth: .infinity)
                    .background(Color("accent"))
                    .cornerRadius(8)
                    
                    Spacer()
                        .frame(height: 170)
                }
                .padding(.horizontal)
            }
            
            VStack {
                Spacer()
                
                MainMenuView()
                
                Spacer()
                    .frame(height: 20)
            }
        }
        .background(Color("background"))
    }
}

struct BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceView()
    }
}
