
import UIKit

class GameTotalsViewController: UIViewController {

    
    @IBOutlet weak var pitchesTotal: UILabel!
    
    var pitchesTotalString = String()
    
    
    override func viewDidLoad() {
        
        pitchesTotal.text = pitchesTotalString
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userDefault = UserDefaults()
        if let data = userDefault.object(forKey: "hitterOnePitchTotal"){
            if let message = data as? String {
                self.pitchesTotal.text = message
            }
        }
        
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
