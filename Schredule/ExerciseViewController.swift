//
//  ExerciseViewController.swift
//  Schredule
//
//  Created by Mitchell Doruff on 4/15/21.
//

import UIKit

class ExerciseViewController: UIViewController {

    var exercise : String = ""
    var exerciseList: [String] = [""];
    var saveToList: String = "";
    
    var date : String = "";
    var datesList : [String] = [""];
    
    func readDatesPropertyList(){
             
        var format = PropertyListSerialization.PropertyListFormat.xml //format of the property list
        let plistPath:String? = Bundle.main.path(forResource: "dates", ofType: "plist")! //the path of the data
        var plistData:[String:AnyObject] = [:]  //our data
        let plistXML = FileManager.default.contents(atPath: plistPath!) //the data in XML format
            do{ //convert the data to a dictionary and handle errors.
                plistData = try PropertyListSerialization.propertyList(from: plistXML!, format: &format) as! [String:AnyObject]
                
                if (plistData.
                datesList = plistData[date] as! [String]
            }
            catch{ // error condition
                print("Error reading plist: \(error), format: \(format)")
            }
    }
    
    func readPropertyList(){
             
        var format = PropertyListSerialization.PropertyListFormat.xml //format of the property list
        let plistPath:String? = Bundle.main.path(forResource: "data", ofType: "plist")! //the path of the data
        var plistData:[String:AnyObject] = [:]  //our data
        let plistXML = FileManager.default.contents(atPath: plistPath!) //the data in XML format
            do{ //convert the data to a dictionary and handle errors.
                plistData = try PropertyListSerialization.propertyList(from: plistXML!, format: &format) as! [String:AnyObject]
                 
                exerciseList = plistData[exercise] as! [String]
            }
            catch{ // error condition
                print("Error reading plist: \(error), format: \(format)")
            }
    }
    
    @IBOutlet weak var eLabel: UILabel!
    func changeName() {
        eLabel.text = exercise
    }

    @IBOutlet weak var setField: UITextField!
    @IBOutlet weak var repField: UITextField!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var save: UIButton!

    
    var setInput = "0"
    var repInput = "0"
    var weightInput = "0.0"
    
    func getSetInput() {

        if setField.hasText {
            self.setInput = setField.text!
        }
    }
    
    func getRepInput() {
        if repField.hasText {
  
            self.repInput = repField.text!
        }
    }
    
    func getWeightInput() {
        if weightField.hasText {
            self.weightInput = weightField.text!
        }

    }
    
    @IBAction func buttonClick(sender: UIButton) {
        getSetInput()
        getRepInput()
        getWeightInput()
        ///////////////////////////////////////////////Insert code to store in prev workouts/////////////////////
        saveToList = ( "Sets: \(setInput), Reps: \(repInput),  Weight: \(weightInput)")
        
        print("\(saveToList)")
        
        exerciseList.append(saveToList)
        
        writePropertyList(exerciseList)
        
    }
    
    
    func writePropertyList(_ listToSave: [String]) {
        let plistPath:String? = Bundle.main.path(forResource: "data", ofType: "plist")!
        
        if FileManager.default.fileExists(atPath: plistPath!) {
            let data = NSMutableDictionary(contentsOfFile: plistPath!)!
            data.setValue(listToSave, forKey: exercise)
            data.write(toFile: plistPath!, atomically: true)
        }
        
        setField.text = ""
        repField.text = ""
        weightField.text = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeName()
        readPropertyList()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
