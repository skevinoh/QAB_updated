
import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var gameNumberLabel: UILabel!

    @IBAction func onBattingOrderTap(_ sender: Any) {
        let presenting = self.presentingViewController!
        presenting.dismiss(animated: true, completion: {
            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
            let orderVC = storyboard.instantiateViewController(withIdentifier: "orderViewController")
            presenting.present(orderVC, animated: true, completion: nil)
        })
    }
    
    @IBAction func onIndividualTotalTap(_ sender: Any) {
        let presenting = self.presentingViewController!
        presenting.dismiss(animated: true, completion: {
            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
            let orderVC = storyboard.instantiateViewController(withIdentifier: "IndividualTotalsViewController")
            presenting.present(orderVC, animated: true, completion: nil)
        })
    }
    
    @IBAction func onGameTotalsTap(_ sender: Any) {
        let presenting = self.presentingViewController!
        presenting.dismiss(animated: true, completion: {
            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
            let orderVC = storyboard.instantiateViewController(withIdentifier: "GameTotalsViewController")
            presenting.present(orderVC, animated: true, completion: nil)
        })
    }
    @IBAction func onPastGamesTap(_ sender: Any) {
        let presenting = self.presentingViewController!
        presenting.dismiss(animated: true, completion: {
            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
            let orderVC = storyboard.instantiateViewController(withIdentifier: "PastGamesViewController")
            presenting.present(orderVC, animated: true, completion: nil)
        })
    }
    @IBAction func onNewGametap(_ sender: Any) {
        let presenting = self.presentingViewController!
        presenting.dismiss(animated: true, completion: {
            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
            let orderVC = storyboard.instantiateViewController(withIdentifier: "ViewController")
            presenting.present(orderVC, animated: true, completion: nil)
        })
    }
    @IBOutlet weak var opponentLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        gameNumberLabel.text = "38"
        
        opponentLabel.text = "CMS"
        
        
        
        // Do any additional setup after loading the view.
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
