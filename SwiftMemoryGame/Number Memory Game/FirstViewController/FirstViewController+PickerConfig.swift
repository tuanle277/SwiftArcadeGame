import UIKit

extension FirstViewController
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
     
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return gameModeArr.count
    }
        
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return gameModeArr[row]
    }
        
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            if row == 0 {
                FirstViewController.chosenGameMode = 4
            } else if row == 1 {
                FirstViewController.chosenGameMode = 6
            } else if row == 2 {
                FirstViewController.chosenGameMode = 8
            }
    }
}
