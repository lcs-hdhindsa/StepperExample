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
    
    @State var secondNumber: Int = 3
    
    // MARK: Computed properties
    var sum: Int {
        return firstNumber + secondNumber
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            // Shows first number
            HStack {
                
                Spacer()
                
                Text("\(firstNumber)")
            }
            
            // To change first number
            Stepper(value: $firstNumber, label: {
                Text("select first number")
            })
            
            // Shows second number
            HStack {
                
                Spacer()
                
                Text("\(secondNumber)")
            }
            
            // To change second number
            Stepper(value: $secondNumber, label: {
                Text("select second number")
            })
            
            // Show the sum
            HStack {
                
                Spacer()
                
                Text("\(sum)")
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    AdditionView()
}
