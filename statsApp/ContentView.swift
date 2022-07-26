//
//  ContentView.swift
//  statsApp
//
//  Created by Talha Minhas on 2022/07/26.
//

import SwiftUI

struct ContentView: View {
    
    func mean(_ x: String) -> Double{
        let array = x.split(separator: ",")

        let n_Array = array.compactMap{ Double($0) }

        let sum = n_Array.reduce(0, {a, b in
            return a + b})

        let mean = Double(sum) / Double(n_Array.count)
        
        return mean
    }

    
    @State var numbers = ""
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Enter Numbers seperated by commas here", text: $numbers).padding(.all).textFieldStyle(.roundedBorder)
                
                Text("Mean of Data: \(mean(numbers))")
                
            }.navigationTitle("Stats App")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
