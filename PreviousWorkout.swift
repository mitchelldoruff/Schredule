class PreviousWorkout{
	var date: Date;
	var exerciseID: String;
	var muscleGroupID: String;
	var sets: Int;
	var reps: Int;
	var weight: Double;
	init(date: Date, exerciseID: String, muscleGroupID: String, sets: Int, reps: Int,
	weight: Double){
		self.date = date;
		self.exerciseID = exerciseID;
		self.muscleGroupID = muscleGroupID;
		self.sets = sets;
		self.reps = reps;
		self.weight = weight;
	}
}