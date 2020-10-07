//
//  ContentView.swift
//  Nubank
//
//  Created by Raphael Cerqueira on 03/10/20.
//

import SwiftUI

struct ContentView: View {
    @State var isBalanceViewVisible = true
    @State var isBalanceVisible = true
    
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Text("Olá, Raphael")
                        .font(.system(size: 28, weight: .bold))
                        
                    Spacer()
                    
                    if isBalanceViewVisible {
                        Button(action: {
                            withAnimation(.spring()) {
                                isBalanceVisible.toggle()
                            }
                        }, label: {
                            Image(systemName: isBalanceVisible ? "eye" : "eye.slash")
                                .font(.system(size: 20, weight: .light))
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color("accent"))
                                .background(Color(#colorLiteral(red: 0.5967729092, green: 0.1358564198, blue: 0.7765894532, alpha: 1)))
                        })
                        .clipShape(Circle())
                    }
                    
                    Button(action: {
                        withAnimation(.spring()) {
                            isBalanceViewVisible.toggle()
                        }
                    }, label: {
                        Image(systemName: isBalanceViewVisible ? "gearshape" : "xmark")
                            .font(.system(size: 26, weight: .light))
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color("accent"))
                            .background(Color(#colorLiteral(red: 0.5967729092, green: 0.1358564198, blue: 0.7765894532, alpha: 1)))
                    })
                    .clipShape(Circle())
                }
                .foregroundColor(Color("accent"))
                .padding(.horizontal)
                
                AccountInfoView()
            }
            
            BalanceView()
                .frame(height: 780)
                .offset(y: isBalanceViewVisible ? 60 : UIScreen.main.bounds.height)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
