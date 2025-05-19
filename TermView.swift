import SwiftUI

struct TermView:  View{
    var body: some View{
        VStack{
            Text("BMI Scale")
            .font(.system(size: 30, weight: .black))
            Text("Underweight: BMI below 18.5.") 
                .bold()
                 Text("Healthy weight: BMI between 18.5 and 24.9.") 
                .bold()
            Text("Overweight: BMI between 25.0 and 29.9.")
                .bold()
                 Text("Obesity: BMI 30.0 or higher.")
                .bold()
            Spacer()
            Text("Key Terms")
            .font(.system(size: 30, weight: .black))
            Text("Push: Exercises that involve the movement of pushing foward.")
                .bold()
            Text("Pull: Exercises that involve the movement of pulling inwards.")
                .bold()
            Text("Calisthenics: Body weight exercises that require the use of ones weight.")
                .bold()
            Text("Split: A way to divide your workouts throughout a span to focus on different muscle groups.")
                .bold()
            Spacer()
            Image("GymLogix 1")
                .resizable()
                .frame(width: 175, height: 175)
                .cornerRadius(45)                .shadow(color:.black, radius: 11 )
                .padding()
            
        }
    }
}
