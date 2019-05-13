import UIKit

class OrderTableViewCell: UITableViewCell {

    var index: Int = 0

    @IBOutlet weak var orderNumber: UILabel!
    @IBOutlet weak var batterNameInput: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    /*
    func getTextFeildValuesFromTableView() ->[String:String?]?{
        var values = [String:String?]()
        for (index, value) in placeholders.enumerated() {
            let indexPath = IndexPath(row: index, section: 0)
            guard let cell = tableView.cellForRow(at: indexPath) as? TextFieldCell else{
                return nil
            }
            if let text = cell.textField.text, !text.isEmpty {
                values[value] = text
            }
        }
        return values
    }
 */

}
