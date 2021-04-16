/// Data file containing a Muscle group as a String array containing a list of exercise .
class MuscleList : Model{
    
    private var _muscleGroup : [String] = ["Bicep", "Tricep", "Pectoral", "Hamstring", "Quadricep", "Calf", "Serratus", "Traps", "Shoulder", "Abdominal", "Forearm", "Back"]
    var muscleGroup : [String] { get {return self._muscleGroup}}
    
    /// Private instance of bicep List containing exercises for targeting the bicep
    private var _bicepList: [String] = ["Strict Bicep bar curl", "Bicep dumbell Curl", "Incline Curl"];
    /// A getter fot the bicepList String Array
    var bicepList: [String] { get {return self._bicepList }}
    
    /// Private instance of tricep List containing exercises for targeting the tricep
	private var _tricepList: [String] = [ "Dip", "Tricep Pulldown", "Tricep single dumbell extension"];
    /// A getter fot the tricepList String Array
    var tricepList: [String] { get {return self._tricepList }}
    
    /// Private instance of pectoral List containing exercises for targeting the pectoral
	private var _pectoralList: [String] = ["Bench Press", "Cable Flies", "Incline Dumbell Press"];
    /// A getter fot the pectoralList String Array
    var pectoralList: [String] { get {return self._pectoralList }}
    
    /// Private instance of hamstring List containing exercises for targeting the hamstring
	private var _hamstringList: [String] = ["Deadlift", "Hamstring Curl", "Romanian Deadlift"];
    /// A getter fot the hamstringList String Array
    var hamstring: [String] { get {return self._hamstringList }}
    
    /// Private instance of quadricepp List containing exercises for targeting the quadricep
	private var _quadricepList: [String] = ["Squat", "Leg Press", "Leg extension"];
    /// A getter fot the quadricepList String Array
    var quadricepList: [String] { get {return self._quadricepList }}
    
    /// Private instance of calf List containing exercises for targeting the calf
	private var _calfList: [String] = ["Seated Calf raise", "Standing Calf Raise", "Straight Leg Calf Extension"];
    /// A getter fot the calfList String Array
    var calfList: [String] { get {return self._calfList }}
    
    /// Private instance of serratus List containing exercises for targeting the serratus
	private var _serratusList: [String] = ["Dumbell Pull Over", "Straight Bar Push Down", "Rack Pull"];
    /// A getter fot the serratusList String Array
    var serratusList: [String] { get {return self._serratusList }}
    
    /// Private instance of tricep List containing exercises for targeting the tricep
	private var _trapsList: [String] = ["Upright Row", "Barbell Shrug", "Dumbell Shrug"];
    /// A getter fot the tricepList String Array
    var trapsList: [String] { get {return self._trapsList }}
    
    /// Private instance of shoulder List containing exercises for targeting the shoulder
    private var _shoulderList: [String] = ["Standing Dumbell Shoulder Press", "Seated Shoulder Press", "Lateral Dumbell Raise"];
    /// A getter fot the shoulderList String Array
    var shoulderList: [String] { get {return self._shoulderList }}
    
    /// Private instance of abdominal List containing exercises for targeting the abdominal
	private var _abdominalList: [String] = ["Hanging leg raise", "Cable Crunch", "Lever"];
    /// A getter fot the abdominalList String Array
    var abdominalList: [String] { get {return self._abdominalList }}
    
    /// Private instance of forearm List containing exercises for targeting the forearm
	private var _forearmList: [String] = ["Wrist Curl", "Pull up", "Plate Walk"];
    /// A getter fot the forearmList String Array
    var forearmList: [String] {get {return self._forearmList }}
    
    /// Private instance of back List containing exercises for targeting the back
	private var _backList: [String] = ["Seated Machine Row", "Machine High Row", "Lat Pull Down"];
    /// A getter fot the backList String Array
    var backList: [String] { get {return self._backList}}
    
    var previousWorkoutList: [(Date, String, String, Int, Double)];
    
    public func exerciseList( _ muscleGroup : String ) -> [String] {
        switch(muscleGroup) {
        case "Bicep":
            return bicepList;
            break;
        case "Tricep":
            return tricepList;
            break;
        case "Pectoral":
            return pectoralList;
            break;
        case "Hamstring":
            return hamstringList;
            break;
        case "Quadricep":
            return quadricepList;
            break;
        case "Calf":
            return calfList;
            break;
        case "Serratus":
            return serratusList;
            break;
        case "Traps":
            return trapsList;
            break;
        case "Shoulder":
            return shoulderList;
            break;
        case "Abdominal":
            return abdominalList;
            break;
        case "Forearm":
            return forearmList;
            break;
        case "Back":
            return backList;
            break;
        default:
            return nul;
            break;
        }
    }
	
}
