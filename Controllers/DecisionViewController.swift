import UIKit
import DGCharts
import Charts

class DecisionViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        setupUI()
    }
    
    private func setupUI() {
        // Add bar chart, pie chart, and other views
        let chartView = BarChartView()
        chartView.frame = CGRect(x: 20, y: 100, width: view.frame.width - 40, height: 300)
        view.addSubview(chartView)
        
        // Example data
        let dataEntries = [
            BarChartDataEntry(x: 1.0, y: 5.0),
            BarChartDataEntry(x: 2.0, y: 10.0)
        ]
        let dataSet = BarChartDataSet(entries: dataEntries, label: "Plays Run")
        chartView.data = BarChartData(dataSet: dataSet)
    }
}

