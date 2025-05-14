//
//  Untitled.swift
//  GymLogix.swiftpm
//
//  Created by Jacob C. Hovet on 5/14/25.
//

import SwiftUI

@main
struct GymLogixApp: App {
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                IntroView()
            }
        }
    }
}


  
    
    
    

struct IntroView: View {
    @State var height = ""
    @State var weight = ""
    @State var bmi: Double? = nil
    @State var workout1 = "Push    Pull    Legs    Rest"
    @State var workout2 = "Fullbody    Rest    Fullbody    Rest"
    @State var workout3 = "Upper   Lower    Rest    Fullbody    Rest"
   @State var workout4 = "Chest Triceps   Back Biceps   Shoulders Biceps   Rest"
    
    var body: some View {
        VStack(spacing: 20) {
            Image("GymLogix")
                .resizable()
                .frame(width: 85, height: 85)
                .cornerRadius(29)                .shadow(color:.black, radius: 11 )
                .padding()
            VStack{
                Text("Exercise Today")
                    .font(.system(size: 30, weight: .heavy))
                
                           Text(workout1)
                    .bold()
                Text(workout2)
         .bold()
                Text(workout3)
         .bold()
                Text(workout4)
         .bold()
                    
            }
            
            
            Spacer()
            
            TextField("Height (inches)", text: $height)
                .frame(alignment: .center)
                .textFieldStyle(.roundedBorder)
                .bold()
                .keyboardType(.decimalPad)
            
            TextField("Weight (lbs)", text: $weight)
                .textFieldStyle(.roundedBorder)
                .bold()
                .keyboardType(.decimalPad)
            
            
            if let bmi = bmi {
                
                Text("BMI: \(String(format: "%.1f", bmi))")
            }
            
            Button("Calculate") {
                if let h = Double(height), let w = Double(weight) {
                    bmi = (w / (h * h)) * 703
                    
                }
            }
            .padding(.bottom, 20.0)
            .frame(height: nil)
            .foregroundStyle(Color.white)
            .buttonStyle(.borderedProminent)
            
        }
        
        .background(.white)
    }
}
                
            
            
    
    


     
