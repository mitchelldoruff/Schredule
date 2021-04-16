/// Data file containing a Muscle group as a String array containing a list of exercise .
class MuscleList : Model{
    
    /// Private instance of bicep List containing exercises for targeting the bicep
    private var _bicepList: [String] = ["Strict Bicep bar curl", "Bicep dumbell Curl", "Incline Curl"];
    /// A getter fot the bicepList String Array
    var bicepList: [String] { get {return self._bicepList }}
    
    /// Private instance of bicep List containing exercises for targeting the bicep
	private var _tricepList: [String] = [ "Dip", "Tricep Pulldown", "Tricep single dumbell extension"];
    var tricepList: [String] { get {return self._tricepList }}
    
    /// Private instance of bicep List containing exercises for targeting the bicep
	private var _pectoralList: [String] = ["Bench Press", "Cable Flies", "Incline Dumbell Press"];
    var pectoralList: [String] { get {return self._pectoralList }}
    
    /// Private instance of bicep List containing exercises for targeting the bicep
	private var _hamstringList: [String] = ["Deadlift", "Hamstring Curl", "Romanian Deadlift"];
    var hamstring: [String] { get {return self._hamstringList }}
    
    /// Private instance of bicep List containing exercises for targeting the bicep
	private var _quadricepList: [String] = ["Squat", "Leg Press", "Leg extension"];
    var quadricepList: [String] { get {return self._quadricepList }}
    
    /// Private instance of bicep List containing exercises for targeting the bicep
	private var _calfList: [String] = ["Seated Calf raise", "Standing Calf Raise", "Straight Leg Calf Extension"];
    var calfList: [String] { get {return self._calfList }}
    
    /// Private instance of bicep List containing exercises for targeting the bicep
	private var _serratusList: [String] = ["Dumbell Pull Over", "Straight Bar Push Down", "Rack Pull"];
    var serratusList: [String] { get {return self._serratusList }}
    
    /// Private instance of bicep List containing exercises for targeting the bicep
	private var _trapsList: [String] = ["Upright Row", "Barbell Shrug", "Dumbell Shrug"];
    var trapsList: [String] { get {return self._trapsList }}
    
    /// Private instance of bicep List containing exercises for targeting the bicep
    private var _shoulderList: [String] = ["Standing Dumbell Shoulder Press", "Seated Shoulder Press", "Lateral Dumbell Raise"];
    var shoulderList: [String] { get {return self._shoulderList }}
    
    /// Private instance of bicep List containing exercises for targeting the bicep
	private var _abdominalList: [String] = ["Hanging leg raise", "Cable Crunch", "Lever"];
    var abdominalList: [String] { get {return self._abdominalList }}
    
    /// Private instance of bicep List containing exercises for targeting the bicep
	private var _forearmList: [String] = ["Wrist Curl", "Pull up", "Plate Walk"];
    var forearmList: [String] {get {return self._forearmList }}
    
    /// Private instance of bicep List containing exercises for targeting the bicep
	private var _backList: [String] = ["Seated Machine Row", "Machine High Row", "Lat Pull Down"];
    var backList: [String] { get {return self._backList}}
    
    var previousWorkoutList: [(Date, String, String, Int, Double)];
    
    public func exerciseList( _ muscleGroup : String ) -> [String] {
        switch(muscleGroup) {
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
