//
//  ContentView.swift
//  Nubank
//
//  Created by Raphael Cerqueira on 03/10/20.
//

import SwiftUI

struct ContentView: View {
    @State var isBalanceViewVisible = false
    
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                    
                    Text("Raphael")
                        .font(.system(size: 28, weight: .bold))
                        .padding(.leading, 8)
                }
                .foregroundColor(Color("accent"))
                
                Button(action: {
                    withAnimation(.spring()) {
                        isBalanceViewVisible.toggle()
                    }
                }, label: {
                    Image(systemName: isBalanceViewVisible ? "chevron.down" : "chevron.up")
                        .foregroundColor(Color("accent"))
                })
                .padding(.top, 8)
                .padding(.bottom)
                
                AccountInfoView()
            }
            
            BalanceView()
                .frame(height: 750)
                .offset(y: isBalanceViewVisible ? 90 : UIScreen.main.bounds.height)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
