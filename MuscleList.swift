class MuscleList{

	var bicepList: [String];
	var tricepList: [String];
	var pectoralList: [String];
	var hamstringList: [String];
	var quadricepList: [String];
	var calfList: [String];
	var serratusList: [String];
	var trapsList: [String];
	var previousWorkoutList: [(Date, String, String, Int, Double)];
	var abdominalList: [String];
	var forearmList: [String];
	var backList: [String];
	
	
	init(bicepList: [String],
	tricepList: [String],
	pectoralList: [String],
	hamstringList: [String],
	quadricepList: [String],
	calfList: [String],
	serratusList: [String],
	trapsList: [String],
	previousWorkoutList: [(Date, String, String, Int, Double)],
	abdominalList: [String],
	forearmList: [String],
	backList: [String]){
		self.bicepList = bicepList;
		self.tricepList = tricepList;
		self.pectoralList = pectoralList;
		self.hamstringList = hamstringList;
		self.quadricepList = quadricepList;
		self.calfList = calfList;
		self.serratusList = serratusList;
		self.trapsList = trapsList;
		self.previousWorkoutList = previousWorkoutList;
		self.abdominalList = abdominalList
		self.forearmList = forearmList;
		self.backList = backList;
	}
	
	
	
}