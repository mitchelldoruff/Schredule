//
//  DateOfWorkoutViewController.swift
//  Schredule
//
//  Created by Mitchell Doruff on 4/15/21.
//

import UIKit

class DateOfWorkoutTableViewController: UITableViewController {
    
    var date : String = "";
    var exerciseList : [String] = [];
    // NEED TO BE FIXED
    
    @IBOutlet weak var eLabel: UILabel!
    func changeName() {
//        eLabel.text = date
    }
    
    func readPropertyList(){
             
        var format = PropertyListSerialization.PropertyListFormat.xml //format of the property list
        var plistData:[String:AnyObject] = [:]  //our data
        let plistPath:String? = Bundle.main.path(forResource: "dates", ofType: "plist")! //the path of the data
        let plistXML = FileManager.default.contents(atPath: plistPath!) //the data in XML format
            do{ //convert the data to a dictionary and handle errors.
                plistData = try PropertyListSerialization.propertyList(from: plistXML!, format: &format) as! [String:AnyObject]
                
                exerciseList = plistData[date] as! [String]
            }
            catch{ // error condition
                print("Error reading plist: \(error), format: \(format)")
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeName()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MuscleCell")
        readPropertyList()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print(date)
        print(exerciseList)
        return exerciseList.count;
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MuscleCell", for: indexPath)

        // Configure the cell...
        let muscles = exerciseList[indexPath.row]
        
        cell.textLabel?.text = "\(muscles)"
        cell.detailTextLabel?.text = "\(muscles)"

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

