class MuscleList : Model{

	var bicepList: [String] = ["Strict Bicep bar curl", "Bicep dumbell Curl", "Incline Curl"];
	var tricepList: [String] = [ "Dip", "Tricep Pulldown", "Tricep single dumbell extension"];
	var pectoralList: [String] = ["Bench Press", "Cable Flies", "Incline Dumbell Press"];
	var hamstringList: [String] = ["Deadlift", "Hamstring Curl", "Romanian Deadlift"];
	var quadricepList: [String] = ["Squat", "Leg Press", "Leg extension"];
	var calfList: [String] = ["Seated Calf raise", "Standing Calf Raise", "Straight Leg Calf Extension"];
	var serratusList: [String] = ["Dumbell Pull Over", "Straight Bar Push Down", "Rack Pull"];
	var trapsList: [String] = ["Upright Row", "Barbell Shrug", "Dumbell Shrug"];
    var shoulderList: [String] = ["Standing Dumbell Shoulder Press", "Seated Shoulder Press", "Lateral Dumbell Raise"];
	var abdominalList: [String] = ["Hanging leg raise", "Cable Crunch", "Lever"];
	var forearmList: [String] = ["Wrist Curl", "Pull up", "Plate Walk"];
	var backList: [String] = ["Seated Machine Row", "Machine High Row", "Lat Pull Down"];
    var previousWorkoutList: [(Date, String, String, Int, Double)];
    
    public func exerciseList( _ muscleGroup : String ) -> [String] {
        switch(MuscleGroup) {
        case "bicep":
            return bicepList;
            break;
        case "tricep":
            return tricepList;
            break;
        case "pectoral":
            return pectoralList;
            break;
        case "hamstring":
            return hamstringList;
            break;
        case "quadricep":
            return quadricepList;
            break;
        case "calf":
            return calfList;
            break;
        case "serratus":
            return serratusList;
            break;
        case "traps":
            return trapsList;
            break;
        case "shoulder":
            return shoulderList;
            break;
        case "abdominal":
            return abdominalList;
            break;
        case "forearm":
            return forearmList;
            break;
        case "back":
            return backList;
            break;
        default:
            return nul;
            break;
        }
    }
	
	
}
