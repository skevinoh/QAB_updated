import UIKit

class OrderViewController: UIViewController {

    @IBOutlet weak var gameNumber: UITextField!
    @IBOutlet weak var opponent: UITextField!
    @IBOutlet weak var date: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var saveButton: UIButton!
    
    //var firstbatter = String(batterNameInput.text!)
    /*
    class A : UIViewController { var x: Int = 5 }
    extension A : UITableViewDelegate {
        func someMethod() { x = x + 22 }
    }
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //input vaules, game #, opponent, date
        gameNumber.delegate = self
        opponent.delegate = self
        date.delegate = self
        
        tableView.dataSource = self
        
    }
    
    @IBAction func saveButton(_ sender: Any) {
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        gameNumber.resignFirstResponder()
        date.resignFirstResponder()
        
    }
    //for textfield test
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var DestViewController : QABViewController = segue.destination as! QABViewController
 
        //DestViewController.BatterNameLabel = .text!
        
 
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

extension OrderViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hitterRow", for: indexPath) as! OrderTableViewCell
        
        cell.index = indexPath.row
        cell.orderNumber.text = String(indexPath.row + 1) 
        
        cell.batterNameInput.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9 //batter.count if it was an array called batter
    }
    
}

extension OrderViewController : UITextFieldDelegate {
    func textFieldShouldReturn( _ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let hitterRow = textField.superview?.superview as? OrderTableViewCell else {
            return
        }
        
        //print(hitterRow.index)
        print(String(hitterRow.batterNameInput.text!))
    }
}
