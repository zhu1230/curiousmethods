class NewController < UIViewController
  extend IB
  
  outlet :save, UIButton
  outlet :username, UITextField
  outlet :password, UITextField
  
  def viewDidLoad
    
  end
  
  def btn_save
    puts self.username.text
    user = PFObject.objectWithClassName("User")
    user.setObject self.username.text, forKey: 'username'
    user.setObject self.password.text, forKey: 'password'
    user.save
  end
  
  def doneEdit(sender)
    sender.resignFirstResponder
  end
  
  
end