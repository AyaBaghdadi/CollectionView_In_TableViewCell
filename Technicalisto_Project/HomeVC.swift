//
//  Created by Technicalisto.
//

import UIKit


class HomeVC: UIViewController, UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
                
    }
    

    // My Data Model
    
    var mySendModel:[(String , [String])]! = [
        ("Cell 1" , ["IOS" , "Android" , "Back-end"]) ,
        ("Cell 2" , ["Swift" , "Objective-c" , "Java" , "Kotlin" , "PHP" , "C#"]) ,
        ("Cell 3" , ["Fresh" , "Junior" , "Mid-level" , "Senior"]) ,
        ("Cell 4" , ["Admin" , "Lead" ]) 
    ]
    
    //-----------------------------------------------------------------------------------------
    // Start Table view Delegate
    //-----------------------------------------------------------------------------------------
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.mySendModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeTVC

        // 1
        cell.nameCell.text = self.mySendModel[indexPath.row].0

        // 2
        cell.myGetModel = self.mySendModel[indexPath.row].1
        cell.collectionView.reloadData()

        return cell

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 230
    }
    
    //-----------------------------------------------------------------------------------------
    // End Table view Delegate
    //-----------------------------------------------------------------------------------------

}

