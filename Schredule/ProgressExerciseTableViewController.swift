//
//  ProgressExerciseTableViewController.swift
//  Schredule
//
//  Created by Joseph Walker on 4/22/21.
//

import UIKit

class ProgressExerciseTableViewController: MuscleTableViewController {

    var thisList : [String] = [""]

    override func viewDidLoad() {
        super.viewDidLoad()
        thisList = MuscleTableViewController.selected
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MuscleCell")

        // Uncomment the following line to preserve selection between presentations
        //self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //print( "tableView numberOfRowsInSection: \(section)")
        if ( section == 0) {
            //print("Row Count \(mL.muscleGroup.count)")
            return thisList.count
        }
        else {return 0}
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //print( "tableview cellForRowAt: \(mL.muscleGroup[indexPath.row])")
        let cell = tableView.dequeueReusableCell(withIdentifier: "MuscleCell", for: indexPath)
        
        let muscles = thisList[ indexPath.row]
        //print("muscles \(muscles)")
        cell.textLabel?.text = "\(muscles)"
        cell.detailTextLabel?.text = "\(muscles)"
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "ToUser", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? ExerciseDataTableViewController else {return}
        let selectedRow = sender as? Int
        
        destination.exercise = thisList[selectedRow!]
    }
    
}
