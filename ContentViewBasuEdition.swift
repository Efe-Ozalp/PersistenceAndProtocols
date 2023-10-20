//
//  ContentViewBasuEdition.swift
//  PersistenceAndProtocols
//
//  Created by Rahul A. Basu on 10/9/23.
//

import Foundation
import SwiftUI

struct ContentViewR: View {
    //MARK: Stretch #2 - Part II
    var cents = [
        Money(nameOfCoin: "Penny", id: "1"),
        Money(nameOfCoin: "Nickel", id: "5"),
        Money(nameOfCoin: "Dime", id: "10"),
        Money(nameOfCoin: "Quarter", id: "25")
        
    ]
    
    
    
    var body: some View {
        HeaderViewR()
        Spacer()
        Text("MVP Works")
        //MARK: MVP - Part II
            .modifier(MVPModifier())
        
        
        
        
        //MARK: Stretch #1 - Part II
        
        MapView()
            .frame(width: 300, height: 200)
        
        
        
        //MARK: Stretch #2 - Part III
        List(cents) {
            coin in
            Text(coin.nameOfCoin)
            
            Text(coin.id)
            
        }
        
        
        
        
        //MARK: Stretch #3 - Part II
        let insetAmount = Double.random(in: 10...90)
        
        Trapezoid(insetAmount: insetAmount)
            .frame(width: 200, height: 100)
            .onTapGesture {
                
                
                
                
                Spacer()
                FooterView()
            }
    }
    struct ContentViewBasuEdition_Previews: PreviewProvider {
        static var previews: some View {
            ContentViewR()
        }
    }
    
}
