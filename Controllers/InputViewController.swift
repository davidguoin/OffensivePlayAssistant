import UIKit

class InputViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    // Picker for "Down"
    let pickerView = UIPickerView()
    let pickerData = ["1", "2", "3", "4"]

    // Dropdown for "Distance"
    let distanceTextField = UITextField()
    let distancePickerView = UIPickerView()
    let distanceData = Array(1...25).map { "\($0)" } // ["1", "2", ..., "25"]

    override func viewDidLoad() {
        super.viewDidLoad()

        if let navigationBar = self.navigationController?.navigationBar {
            navigationBar.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                navigationBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                navigationBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                navigationBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
            ])
        }
    }

    // MARK: - UIPickerViewDataSource Methods

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 // Number of columns
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == self.pickerView {
            return pickerData.count // Rows for Down picker
        } else if pickerView == self.distancePickerView {
            return distanceData.count // Rows for Distance picker
        }
        return 0
    }

    // MARK: - UIPickerViewDelegate Methods

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == self.pickerView {
            return pickerData[row] // Text for Down picker
        } else if pickerView == self.distancePickerView {
            return distanceData[row] // Text for Distance dropdown
        }
        return nil
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == self.pickerView {
            // Only log if absolutely necessary
            print("Selected Down: \(pickerData[row])")
        } else if pickerView == self.distancePickerView {
            distanceTextField.text = distanceData[row]
        }
    }


    // MARK: - Helper to Add Done Button to Picker
    private func addDoneButtonToPicker(for textField: UITextField) {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(dismissPicker))
        toolbar.setItems([doneButton], animated: true)
        toolbar.isUserInteractionEnabled = true
        textField.inputAccessoryView = toolbar
    }

    @objc private func dismissPicker() {
        view.endEditing(true) // Dismiss the picker
    }
}
