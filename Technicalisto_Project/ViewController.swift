//
//  ViewController.swift
//  Technicalisto_Project
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var firstTableView: UITableView!
    @IBOutlet weak var firstTableViewHeight: NSLayoutConstraint!
    
    @IBOutlet weak var secondTableView: UITableView!
    @IBOutlet weak var secondTableViewHeight: NSLayoutConstraint!
    
    var ResultOne:[String]! = ["Technicalisto" ,
                               
                               "“The Best Way To Get Started Is To Quit Talking And Begin Doing.” – Walt Disney" ,
                               
                               "“The Pessimist Sees Difficulty In Every Opportunity. The Optimist Sees Opportunity In Every Difficulty.” – Winston Churchill" ,
                               
                               "“Don’t Let Yesterday Take Up Too Much Of Today.” – Will Rogers"
    ]
    
    var ResultTwo:[(String , String)]! = [
        ("You Learn More From Failure Than From Success. Don’t Let It Stop You. Failure Builds Character.” – Unknown"
         , "“It’s Not Whether You Get Knocked Down, It’s Whether You Get Up.” – Inspirational Quote By Vince Lombardi") ,
        
        ("“If You Are Working On Something That You Really Care About, You Don’t Have To Be Pushed. The Vision Pulls You.” – Steve Jobs" ,
         "“People Who Are Crazy Enough To Think They Can Change The World, Are The Ones Who Do.” – Rob Siltanen"),
        
        ("You Learn More From Failure Than From Success. Don’t Let It Stop You. Failure Builds Character.” – Unknown"
         , "“It’s Not Whether You Get Knocked Down, It’s Whether You Get Up.” – Inspirational Quote By Vince Lombardi") ,
        
        ("“If You Are Working On Something That You Really Care About, You Don’t Have To Be Pushed. The Vision Pulls You.” – Steve Jobs" ,
         "“People Who Are Crazy Enough To Think They Can Change The World, Are The Ones Who Do.” – Rob Siltanen")
        
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.firstTableView.tableFooterView = UIView()
//        self.secondTableView.tableFooterView = UIView()
        
    }

    override func viewWillLayoutSubviews() {
        super.updateViewConstraints()
        
        DispatchQueue.main.async {

        self.firstTableViewHeight.constant = self.firstTableView.contentSize.height
//        self.secondTableViewHeight.constant = self.secondTableView.contentSize.height
            
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        self.viewWillLayoutSubviews()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView == self.firstTableView {
            
            return self.ResultOne.count
        }else{
            
            return self.ResultTwo.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == self.firstTableView {
            
            let cell = self.firstTableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTableViewCell
            
            cell.titleCell.text = self.ResultOne[indexPath.row]
            
            return cell
            
        }else{
            
            let cell = self.secondTableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTableViewCell
            
            cell.titleCell.text = self.ResultTwo[indexPath.row].0
            
            cell.tltleTwoCell.text = self.ResultTwo[indexPath.row].1

            return cell
            
        }
    }
}

