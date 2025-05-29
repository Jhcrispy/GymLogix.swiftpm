import SwiftUI

struct ExerciseLog: Identifiable {
    let id = UUID()
    let exerciseName: String
    let weight: Double
    let reps: Int
    
}

struct LogView: View {
    @State var exerciseNameInput = ""
    @State var weightInput = ""
    @State var repsInput = ""
    @State var exerciseLogs: [ExerciseLog] = []
    
    var body: some View {
        VStack{
            Text("Exercise Log")
              Spacer()
            Spacer()
            
            VStack{
                Spacer()
                TextField("Exercise", text: $exerciseNameInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Weight (lbs)", text: $weightInput)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                TextField("Reps", text: $repsInput)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Log Exercise") {
                    if let weight = Double(weightInput),
                       let reps = Int(repsInput),  !exerciseNameInput.isEmpty {
                        let newLog = ExerciseLog(exerciseName: exerciseNameInput, weight: weight, reps: reps)
                        exerciseLogs.append(newLog)
                        exerciseNameInput = ""
                        weightInput = ""
                        repsInput = ""
                    }
                }
                .padding()
                .background(.gray)
                .foregroundColor(.white)
                .cornerRadius(29)                .shadow(color:.white, radius: 8 )
                
                List(exerciseLogs) { log in
                    VStack(alignment: .leading) {
                        Text("Exercise: \(log.exerciseName)")
                        Text("Weight: \(String(format: "%.1f", log.weight)) lbs")
                        Text("Reps: \(log.reps)")
                        
                    }
                    
                }
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
    
}


