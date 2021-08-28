
# Technicalisto

## Create multible TableView with dynamic data inside Vertical StackView inside ScrollView

1. Add UIVeiwController with Empty UIScrollView.

2. Inside UIScrollView Add UIStackView with :

         Axis : Vertical
         Alignment : Fill
         Distribution : Fill 
         
3. Inside your stackview add ypur design as you want but , 
    Not forget to add your Table views ti achieve the moral . 
    
4. In Every Table view Mark in " Content Layout Guide " && Add a fake Height to your Tableview.

5. With your view controller Connect your Tableviews & connect the constraint of Tableview Height.

6. Add your Tableview delegate & create cell & send your cell data.

7. Add the following code With change with your tableview & tableviewConstraint 

#### 1
override func viewWillLayoutSubviews() {

    super.updateViewConstraints()
    
    DispatchQueue.main.async {

    self.firstTableViewHeight.constant = self.firstTableView.contentSize.height
    self.secondTableViewHeight.constant = self.secondTableView.contentSize.height
        
    }
    
}

#### 2
func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {

    self.viewWillLayoutSubviews()
    
}

### Thanks

