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
    @State var splitIndex = 0
    let split = [
        "Push    Pull    Legs    Rest",
        "Fullbody    Rest    Fullbody    Rest",
        "Upper   Lower    Rest    Fullbody    Rest",
        "Chest&Tri    Back&Bi    Shoulders&Bi",
        "Push    Calisthentics    Pull    Rest"
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            Image("GymLogx")
                .resizable()
                .frame(width: 85, height: 85)
                .cornerRadius(29)                .shadow(color:.black, radius: 11 )
                .padding()
            VStack{
                Text("Split Options")
                    .foregroundStyle(.white)
                    .font(.system(size: 30, weight: .black))
                
                    .padding()
                
                Text(split[splitIndex])
                    .bold()
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundStyle(.white)
                    .padding()
                Button(action: {
                    splitIndex = (splitIndex + 1) % split.count
                }, label: {
                    Text("Switch")
                    
                })
                .bold()
                Spacer()
                
                Spacer()
                
            }
            Text("BMI Calculator")
                .foregroundStyle(.white)
                .bold()
            
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
            
            Button("Calculate"){
                if let h = Double(height), let w = Double(weight) {
                    bmi = (w / (h * h)) * 703
                       
                    
                }
            }
            .padding(.bottom, 20.0)
            .frame(height: nil)
            .buttonStyle(.borderedProminent)
            .foregroundStyle(.white)
           
            
            HStack{
                NavigationLink(destination: TermView()){
                    Spacer()
                    Text("Terms")
                        .foregroundStyle(.white)
                        .bold()
                }
                    NavigationLink(destination: LogView()){
                        Spacer()
                        Text("Log")
                            .foregroundStyle(.white)
                            .bold()
                        Spacer()
                        
                    }
                    NavigationLink(destination: WorkoutView()){
                        Text("Workouts")
                            .foregroundStyle(.white)
                            .bold()
                        Spacer()
                    }
                }
            
            }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color(red: 40/255, green: 37/255, blue: 30/255))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray, lineWidth: 0.01))
        .shadow(color: .white, radius: 10 )
            
        }
     
    }
    
    
    

    
    


     
