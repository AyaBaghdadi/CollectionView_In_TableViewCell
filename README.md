
# Technicalisto

## How to handle Remmember me button in Login screen

1. Add UIVeiwController with your login design & remember me button.

2. Connect text fields & buttons to your view controller.

3. In Assets ad two image check & un check.

4. At the top of view controller define

       var AgreeIconClick : Bool! = false

5. Add action when tap in remmember me button

       if(AgreeIconClick == false) {
       
        if let image = UIImage(named: "check") {
          rememberBtn.setBackgroundImage(image, for: .normal)
        }
           AgreeIconClick = true
           
        } else {
        if let image = UIImage(named: "un_check") {
          rememberBtn.setBackgroundImage(image, for: .normal)
       }
           AgreeIconClick = false
       }
       
6. To save add this lines in your action

       if(AgreeIconClick == true) {
    
       UserDefaults.standard.set("1", forKey: "rememberMe")
       UserDefaults.standard.set(userMailTxt.text ?? "" , forKey: "userMail")
       UserDefaults.standard.set(passwordTxt.text ?? "", forKey: "userPassword")
    
       print("Mail & Password Saved Successfully")
    
       }else{
    
       UserDefaults.standard.set("2", forKey: "rememberMe")

       }

7. In viewDidLoad Call this function for check 

       if UserDefaults.standard.string(forKey: "rememberMe") == "1" {
    
        if let image = UIImage(named: "check") {
        rememberBtn.setBackgroundImage(image, for: .normal)
         }
    
        AgreeIconClick = true
    
        // Set values
                 self.userMailTxt.text = UserDefaults.standard.string(forKey: "userMail") ?? ""
                 self.passwordTxt.text = UserDefaults.standard.string(forKey: "userPassword") ?? ""
    
        }else{
    
        if let image = UIImage(named: "un_check") {
        rememberBtn.setBackgroundImage(image, for: .normal)
        }
    
        AgreeIconClick = false
       }

### Thanks

