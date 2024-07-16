//
//  ContentView.swift
//  tip estimate
//
//  Created by Arav Mathur on 2020-12-26.
//

import SwiftUI

struct ContentView: View {
    @State var total = "20"
    @State var tipPrecent: Double = 15.0
    var body: some View {
        VStack{
            Text("Tip Calculator")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            HStack {
                Text("$")
                TextField("Total", text: $total)
                    .border(Color.black, width: 0.25)
            }
            .padding()
            
            HStack {
                Slider(value: $tipPrecent, in: 1...30, step: 1.0)
                Text("\(Int(tipPrecent))%")
            }
            .padding()
            
            if let totalNum = Double(total) {
                Text("Tip Amount: \(Double(total)! * tipPrecent / 100, specifier: "%0.2f") ")
            } else {
                Text("Please enter a valid numerical value")
            }
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
