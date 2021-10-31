 /**
  * Student Id       : 301209947
  * Student Name     : Keshav Dulal
  * Course           : MAPD 711 - Samsung Android App Development
  * Submission Date  : 10/31/2021
  * Exercise Number  : Simple Shopping List App
  */

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var listName: UITextField!
    @IBOutlet weak var listNameDisplay: UILabel!
    
    // Item labels
    @IBOutlet weak var quantity1: UILabel!
    @IBOutlet weak var quantity2: UILabel!
    @IBOutlet weak var quantity3: UILabel!
    @IBOutlet weak var quantity4: UILabel!
    @IBOutlet weak var quantity5: UILabel!
    
    // Steppers
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var stepper2: UIStepper!
    @IBOutlet weak var stepper3: UIStepper!
    @IBOutlet weak var stepper4: UIStepper!
    @IBOutlet weak var stepper5: UIStepper!
    
    // Item Input Fields
    @IBOutlet weak var itemField1: UITextField!
    @IBOutlet weak var itemField2: UITextField!
    @IBOutlet weak var itemField3: UITextField!
    @IBOutlet weak var itemField4: UITextField!
    @IBOutlet weak var itemField5: UITextField!
    
    // list name handler
    @IBAction func listNameInputListener(_ sender: UITextField) {
        let nameoflist: String = listName.text ?? "Shopping List-"
        listNameDisplay.text = String(nameoflist)
    }
    
    // Stepper handlers
    @IBAction func stepperAction1(_ sender: UIStepper) {
        quantity1.text=String(Int(sender.value))
    }
    
    @IBAction func stepperAction2(_ sender: UIStepper) {
        quantity2.text=String(Int(sender.value))
    }
    
    @IBAction func stepperAction3(_ sender: UIStepper) {
        quantity3.text=String(Int(sender.value))
    }
    
    @IBAction func stepperAction4(_ sender: UIStepper) {
        quantity4.text=String(Int(sender.value))
    }
    
    @IBAction func stepperAction5(_ sender: UIStepper) {
        quantity5.text=String(Int(sender.value))
    }
    
    
    // Button Handlers
    
    @IBAction func cancelHandler(_ sender: UIButton) {
        resetApp();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resetApp();
    }
    
    func resetApp(){
        // reset quantity display
        quantity1.text="0"
        quantity2.text="0"
        quantity3.text="0"
        quantity4.text="0"
        quantity5.text="0"
        
        
        // reset the steppers
        stepper1.value=0
        stepper2.value=0
        stepper3.value=0
        stepper4.value=0
        stepper5.value=0
        
        // clear input fields
        listName.text=""
        itemField1.text=""
        itemField2.text=""
        itemField3.text=""
        itemField4.text=""
        itemField5.text=""
        
    }


}

