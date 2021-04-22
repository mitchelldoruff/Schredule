//
//  ExerciseViewController.swift
//  Schredule
//
//  Created by Mitchell Doruff on 4/15/21.
//

import UIKit

class ExerciseViewController: UIViewController {

    var exercise : String = ""
    
    
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
        print("sets: \(setInput) Reps: \(repInput)  Weight: \(weightInput)")
        ///////////////////////////////////////////////Insert code to store in prev workouts/////////////////////
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeName()
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
