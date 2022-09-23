 //
//  ContentView.swift
//  TapGestureBootcamp
//
//  Created by Bishowjit Ray on 23/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var isSelected: Bool = false
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.blue : Color.red)
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                 Text("Button")
                    .font(.headline)
                    .frame(height: 20)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(23.0)
                
            })
            Text("Tap Gesture")
               .font(.headline)
               .frame(height: 20)
               .frame(maxWidth: .infinity)
               .padding()
               .background(Color.blue)
               .foregroundColor(Color.white)
               .cornerRadius(23.0)
               .onTapGesture {
                   isSelected.toggle()
               }
               .onTapGesture(count: 2, perform: {
                   isSelected.toggle()
               })
             
            Spacer()
        }
        .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
