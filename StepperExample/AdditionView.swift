//
//  AdditionView.swift
//  StepperExample
//
//  Created by Harshan Dhindsa on 2025-01-13.
//

import SwiftUI

struct AdditionView: View {
    
    // MARK: Stored properties
    @State var firstNumber: Int = 5
    
    // MARK: Computed properties
    var sum: Int {
        return firstNumber + firstNumber
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack {
                
                Spacer()
                
                Text("\(firstNumber)")
            }
            
            Stepper(value: $firstNumber, label: {
                Text("select first number")
            })
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    AdditionView()
}
