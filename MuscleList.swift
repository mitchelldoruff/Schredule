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
	sampleList = MuscleList(
		bicepList: ["curls", "pushups", "placeholder"],
		tricepList: ["diamond pushups", "fill here", "idk"],
		pectoralList: ["todo"],
		hamstringList: ["leg curl", "glute raise", "I honestly got these off wikipedia"],
		quadricepList: ["todo"],
		calfList: ["calf raises", "stair calves"]
		serratusList: ["I don't know this is a really f**ing obscure muscle group"],
		abdominalList: ["situps", "hip risers", "planks"],
		forearmList: ["how are these different from biceps and triceps"],
		backList: ["Why would you work out the most vulnerable muscle in your body"]
	)
	
	
}
