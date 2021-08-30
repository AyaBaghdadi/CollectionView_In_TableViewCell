//
//  Created by Technicalisto.
//

import UIKit

class HomeTVC: UITableViewCell , UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var nameCell: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!

    var myGetModel:[String]! = [String]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
            self.collectionView.delegate = self
            self.collectionView.dataSource = self
        
    }

   
    //-----------------------------------------------------------------------------------------
    // Start Collection view Delegate
    //-----------------------------------------------------------------------------------------
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         
        return self.myGetModel?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath) as! HomeCVC

 
        cell.nameCVCCell.text = self.myGetModel?[indexPath.row]


         return cell
    }
    
    //-----------------------------------------------------------------------------------------
    // End Collection view Delegate
    //-----------------------------------------------------------------------------------------

}

