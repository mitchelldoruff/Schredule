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
    
    func readPropertyList(){
             
        var format = PropertyListSerialization.PropertyListFormat.xml //format of the property list
        var plistData:[String:AnyObject] = [:]  //our data
        let plistPath:String? = Bundle.main.path(forResource: "data", ofType: "plist")! //the path of the data
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
        
        exerciseList.append(saveToList);
        
        writePropertyList(exerciseList)
        
    }
    
    func writePropertyList(_ listToSave: [String]) {
        let encoder = PropertyListEncoder()
        encoder.outputFormat = .xml

        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("data.plist")

        do {
            let data = try encoder.encode(exerciseList)
            try data.write(to: path)
        } catch {
            print(error)
        }
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
