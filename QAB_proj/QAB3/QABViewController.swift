import UIKit

class QABViewController: UIViewController {

    //pitches
    @IBOutlet weak var pitchThirdABTextField: UITextField!
    @IBOutlet weak var pitchFirstABTextField: UITextField!
    @IBOutlet weak var pitchSecondABTextField: UITextField!
    @IBOutlet weak var pitchFourthABTextField: UITextField!
    @IBOutlet weak var pitchFifthABTextField: UITextField!
    
    @IBOutlet weak var pitchesFirstBatterLabel: UILabel!
    
    
    //@IBOutlet weak var batterName: UILabel!
    
    //var BatterNameLabel = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //load pitches
        let savedHitterOnePitchFirstAB = UserDefaults.standard.object(forKey: "hitterOnePitchFirstAB")
        
        if let pitchsavedp1 = savedHitterOnePitchFirstAB as? String {
            pitchFirstABTextField.text = pitchsavedp1
        }
        
        let savedHitterOnePitchSecondAB = UserDefaults.standard.object(forKey: "hitterOnePitchSecondAB")
        
        if let pitchsavedp2 = savedHitterOnePitchSecondAB as? String {
            pitchSecondABTextField.text = pitchsavedp2
        }
        
        let savedHitterOnePitchThirdAB = UserDefaults.standard.object(forKey: "hitterOnePitchThirdAB")
        
        if let pitchsavedp3 = savedHitterOnePitchThirdAB as? String {
            pitchThirdABTextField.text = pitchsavedp3
        }
        
        let savedHitterOnePitchFourthAB = UserDefaults.standard.object(forKey: "hitterOnePitchFourthAB")
        
        if let pitchsavedp4 = savedHitterOnePitchFourthAB as? String {
            pitchFourthABTextField.text = pitchsavedp4
        }
        
        let savedHitterOnePitchFifthAB = UserDefaults.standard.object(forKey: "hitterOnePitchFifthAB")
        
        if let pitchsavedp5 = savedHitterOnePitchFifthAB as? String {
            pitchFifthABTextField.text = pitchsavedp5
        }
        
        let savedHitterOnePitchTotal = UserDefaults.standard.object(forKey: "hitterOnePitchTotal")
        
        if let pitchsavedpT = savedHitterOnePitchTotal as? String {
            pitchesFirstBatterLabel.text = pitchsavedpT
        }


        // Do any additional setup after loading the view.
        
    //battingNumber.text =
    //batterName.text = BatterNameLabel
        
        
    }
    /*
    func textFieldDidBeginEditing(pitchesFirstBatterLabel: UITextField) {
        pitchesFirstBatterLabel.text = ""
        pitchSecondABTextField.text = ""
    }
    */
    @IBAction func updateButton(_ sender: AnyObject) {
        //allows for an addition of pitches
        let firstBatterPitchesABone = Int(pitchFirstABTextField.text!)
        let firstBatterPitchesABtwo = Int(pitchSecondABTextField.text!)
        let firstBatterPitchesABthree = Int(pitchThirdABTextField.text!)
        let firstBatterPitchesABfour = Int(pitchFourthABTextField.text!)
        let firstBatterPitchesABfive = Int(pitchFifthABTextField.text!)
        
        //math for totalpitcheslabel
        let firstBatterPitchesTotal = Int(firstBatterPitchesABone! + firstBatterPitchesABtwo! + firstBatterPitchesABthree! + firstBatterPitchesABfour! + firstBatterPitchesABfive!)
        
        //updates the pitches in the inning total
        pitchesFirstBatterLabel.text = "\(firstBatterPitchesTotal)"
        
        //saves user data
        UserDefaults.standard.set(pitchFirstABTextField.text, forKey: "hitterOnePitchFirstAB")
        UserDefaults.standard.set(pitchSecondABTextField.text, forKey: "hitterOnePitchSecondAB")
        UserDefaults.standard.set(pitchThirdABTextField.text, forKey: "hitterOnePitchThirdAB")
        UserDefaults.standard.set(pitchFourthABTextField.text, forKey: "hitterOnePitchFourthAB")
        UserDefaults.standard.set(pitchFifthABTextField.text, forKey: "hitterOnePitchFifthAB")
        UserDefaults.standard.set(pitchesFirstBatterLabel.text, forKey: "hitterOnePitchTotal")
        
    }
    
    @IBAction func clearButton(_ sender: AnyObject) {
        UserDefaults.standard.removeObject(forKey:"hitterOnePitchFirstAB")
        UserDefaults.standard.removeObject(forKey:"hitterOnePitchSecondAB")
        UserDefaults.standard.removeObject(forKey:"hitterOnePitchThirdAB")
        UserDefaults.standard.removeObject(forKey:"hitterOnePitchFourthAB")
        UserDefaults.standard.removeObject(forKey:"hitterOnePitchFifthAB")
        UserDefaults.standard.removeObject(forKey: "hitterOnePitchTotal")
    
    }
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let gameTotalVC = segue.destination as! GameTotalsViewController
        gameTotalVC.pitchesTotalString = pitchesFirstBatterLabel.text!
    }
    */
    
    @IBAction func finishButton(_ sender: Any) {
        //forsegue
        
        //performSegue(withIdentifier: "segueFirstBatter", sender: self)
    }
    
}




/*
 Math for QAB stats:
 
 //QAB TOTALS
 var pitchingQABTotal : Int
 var bigInnQABTotal : Int
 var fiftyPercentQABTotal : Int
 var leadoffQABTotal : Int
 var twostrikesQABTotal : Int
 var twooutsQABTotal: Int
 
 //INN TOTALS
 var atbatsInnTotal : Int
 var inningInnTotal : Int
 var qualityInnTotal : Int
 var pitchesInnTotal : Int
 var stringsInnTotal : Int
 var runsInnTotal : Int
 
 //QAB STATS
 var count : Int
 var pitches : Int
 var pitchType : String()
 var contact : Int
 var result : String()
 var qualityorno : String()
 var chases : String()
 
 
 
 
 //INDIVIDUAL TOTALS
 var batterOnePitches: Int
 var batterOneQuality: Int
 var batterOneContact: Int
 var batterTwoPitches: Int
 var batterTwoQuality: Int
 var batterTwoContact: Int
 var batterThreePitches: Int
 var batterThreeQuality: Int
 var batterThreeContact: Int
 var batterFourPitches: Int
 var batterFourQuality: Int
 var batterFourContact: Int
 var batterFivePitches: Int
 var batterFiveQuality: Int
 var batterFiveContact: Int
 var batterSixPitches: Int
 var batterSixQuality: Int
 var batterSixContact: Int
 var batterSevenPitches: Int
 var batterSevenQuality: Int
 var batterSevenContact: Int
 var batterEightPitches: Int
 var batterEightQuality: Int
 var batterEightContact: Int
 var batterNinePitches: Int
 var batterNineQuality: Int
 var batterNineContact: Int
 
 */


/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */
