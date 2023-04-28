
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    // 임의 데이터 넣기
    var items: [String] = ["A", "B", "C", "D", "E", "F", "G"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    // section count
    public func numberOfSetions(in tableView: UIView) -> Int {
        return 1
    }
    
    // section title
    //    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    //        return String(Array(Set(self.items.map{ $0.first! })).sorted() [section])
    //    }
    
    // row의 data 대입 *********
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellList", for: indexPath)
//        cell.text = self.items.filter{ $0.first == charactor }[indexPath.row]
        return cell
    }
    
    // section의 row count
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}


