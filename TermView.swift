import SwiftUI

struct TermView:  View{
    var body: some View{
        VStack{
            Text("BMI Scale")
            .font(.system(size: 30, weight: .black))
            .foregroundStyle(.white)
            Text("Underweight: BMI below 18.5.")
                .bold()
                .foregroundStyle(.white)
                 Text("Healthy weight: BMI between 18.5 and 24.9.")
                .bold()
                .foregroundStyle(.white)
            Text("Overweight: BMI between 25.0 and 29.9.")
                .bold()
                .foregroundStyle(.white)
                 Text("Obesity: BMI 30.0 or higher.")
                .bold()
                .foregroundStyle(.white)
            Spacer()
            Text("Key Terms")
            .font(.system(size: 30, weight: .black))
            .foregroundStyle(.white)
            Text("Push: Exercises that involve the movement of pushing foward.")
                .bold()
                .foregroundStyle(.white)
            Text("Pull: Exercises that involve the movement of pulling inwards.")
                .bold()
                .foregroundStyle(.white)
            Text("Calisthenics: Body weight exercises that require the use of ones weight.")
                .bold()
                .foregroundStyle(.white)
            Text("Split: A way to divide your workouts throughout a span to focus on different muscle groups.")
                .bold()
                .foregroundStyle(.white)
            Spacer()
            Image("GymLogx")
                .resizable()
                .frame(width: 175, height: 175)
                .cornerRadius(45)                .shadow(color:.white, radius: 13 )
                .padding()
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color(red: 40/255, green: 37/255, blue: 30/255))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray, lineWidth: 0.01))
        .shadow(color: .white, radius: 10 )
    }
    
}
