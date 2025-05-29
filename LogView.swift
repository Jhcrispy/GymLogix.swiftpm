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
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(29)                .shadow(color:.blue, radius: 8 )
                
                List(exerciseLogs) { log in
                    VStack(alignment: .leading) {
                        Text("Exercise: \(log.exerciseName)")
                        Text("Weight: \(String(format: "%.1f", log.weight)) lbs")
                        Text("Reps: \(log.reps)")
                        
                    }
                    
                }
                .padding()
                .navigationTitle("Exercise Log")
            }
            
        }

    }
    



