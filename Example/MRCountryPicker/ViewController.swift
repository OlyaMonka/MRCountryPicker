import UIKit
import MRCountryPicker

class ViewController: UIViewController, MRCountryPickerDelegate {
    
    @IBOutlet weak var countryPicker: MRCountryPicker!
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var countryCode: UILabel!
    @IBOutlet weak var countryFlag: UIImageView!
    @IBOutlet weak var phoneCode: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryPicker.countryPickerDelegate = self
        countryPicker.showPhoneNumbers = true
        countryPicker.setTopCountries(codes: ["DE", "DK", "PL", "GB", "SE", "NO"])
        countryPicker.setCountryByName("Canada")
    }
    
    func countryPhoneCodePicker(_ picker: MRCountryPicker, didSelectCountryWithName name: String, countryCode: String, phoneCode: String, flag: UIImage) {
        self.countryName.text = name
        self.countryCode.text = countryCode
        self.phoneCode.text = phoneCode
        self.countryFlag.image = flag
    }
}
