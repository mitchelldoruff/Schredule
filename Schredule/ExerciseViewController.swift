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
