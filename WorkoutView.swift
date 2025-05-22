import SwiftUI

struct WorkoutView: View {
    let exerciseCategories: [String: [String]] = [
        "Chest": [
            "Bench Press (Barbell)", "Dumbbell Chest Press", "Incline Bench Press", "Decline Bench Press", "Push-ups",
            "Chest Fly (Machine or Dumbbell)", "Cable Crossover", "Pec Deck Machine", "Incline Dumbbell Fly", "Svend Press",
            "Archer Push-ups", "Wide Push-ups", "Clap Push-ups", "Typewriter Push-ups", "Hindu Push-ups"
        ],
        "Back": [
            "Pull-ups", "Chin-ups", "Deadlifts", "Bent-over Barbell Rows", "T-Bar Row",
            "Seated Cable Row", "Lat Pulldown", "Inverted Row", "One-arm Dumbbell Row", "Straight-arm Pulldown",
            "Australian Pull-ups", "Towel Rows", "Front Lever", "Reverse Snow Angels", "Wall Pulls", "Hyperextensions", "Bird Dog", "Superman Exercise", "Reverse Plank", "Bridge Hold",
            "Superman Holds", "Cat-Cow Stretch", "Table Bridge"
        ],
        "Shoulders": [
            "Overhead Press", "Arnold Press", "Lateral Raise", "Front Raise", "Rear Delt Fly",
            "Face Pulls", "Upright Row", "Dumbbell Shrugs", "Cable Lateral Raise", "Landmine Press",
            "Pike Push-ups", "Handstand", "Handstand Push-ups", "Wall Walks", "Elevated Pike Push-ups"
        ],
        "Biceps": [
            "Barbell Curl", "Dumbbell Bicep Curl", "Hammer Curl", "Concentration Curl", "Preacher Curl",
            "Cable Curl", "Zottman Curl", "Chin-ups (narrow grip)", "Towel Chin-ups", "Commando Pull-ups",
            "Pelican Curls", "Isometric Chin-up Holds"
        ],
        "Tri": [
            "Tricep Dips", "Tricep Pushdown", "Overhead Tricep Extension", "Close-grip Bench Press",
            "Skull Crushers", "Kickbacks", "Diamond Push-ups", "Bench Dips", "Korean Dips", "Ring Dips",
            "Deep Push-ups", "Triceps Extension Push-ups"
        ],
        "Forearms": [
            "Wrist Curls", "Reverse Wrist Curls", "Farmer’s Carry", "Plate Pinch Hold", "Dead Hangs",
            "Towel Hangs", "Fingertip Push-ups", "Wrist Push-ups", "Rope Climbs"
        ],
        "Legs": [
            "Back Squats", "Front Squats", "Leg Press", "Lunges", "Bulgarian Split Squats",
            "Step-ups", "Wall Sit", "Sissy Squats", "Romanian Deadlift", "Lying Leg Curl Machine",
            "Good Mornings", "Kettlebell Swings", "Glute-Ham Raise", "Hip Thrust", "Glute Bridge",
            "Cable Kickbacks", "Resistance Band Lateral Walk", "Step-ups with Dumbbell", "Standing Calf Raise",
            "Seated Calf Raise", "Donkey Calf Raise", "Farmer Walk on Toes", "Jump Rope",
            "Pistol Squats", "Assisted Pistol Squats", "Shrimp Squats", "Nordic Hamstring Curls",
            "Jump Squats", "Skater Lunges", "Broad Jumps", "Glute March", "Calf Raises"
        ],
        "Core": [
            "Plank", "Side Plank", "Russian Twists", "Hanging Leg Raises", "Bicycle Crunches",
            "V-Ups", "Mountain Climbers", "Ab Rollout", "Cable Woodchopper", "Sit-ups",
            "Reverse Crunches", "Lying Leg Raise", "Toe Touches", "Flutter Kicks", "Dragon Flag",
            "Hollow Body Hold", "L-sit", "Hanging Knee Raises", "Windshield Wipers", "Plank Shoulder Taps",
            "Dead Bug", "Leg Raises on Parallel Bars", "V-sit Hold", "Standing Oblique Crunch", "Tuck Planche Hold"
        ],
    
        "Full": [
            "Burpees", "Clean and Press", "Snatch", "Kettlebell Swings", "Thrusters",
            "Battle Ropes", "Bear Crawl", "Turkish Get-Up", "Sled Push", "Medicine Ball Slam",
            "Muscle-ups", "Burpee Pull-ups", "Wall Climbs", "Jumping Lunges", "Spiderman Crawls",
            "Lizard Crawl", "Squat Thrusts", "Plank to Push-up", "High Knees", "Tuck Jumps"
        ]
    ]
    @State var selectedCategory = "Chest"
    var body: some View{
        VStack{
            Picker("Select Category", selection: $selectedCategory) {
                ForEach(Array(exerciseCategories.keys.sorted()), id: \.self) { category in
                    Text(category).tag(category)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            List(exerciseCategories[selectedCategory] ?? [], id: \.self) { exercise in
                Text(exercise)
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

