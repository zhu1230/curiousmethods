class ListController < UITableViewController
  extend IB
  attr_accessor :users
  
  outlet :users
  outlet :cell, UITableViewCell
  
  def viewWillAppear(animated)
    PFQuery.clearAllCachedResults
    pf_users =PFQuery.queryWithClassName("User")
    self.users = pf_users.findObjects
    # self.users = [['zhu', '123'],['yin', '321']]
  end
  
  def tableView(tv, cellForRowAtIndexPath: indexPath)
    cell = tv.dequeueReusableCellWithIdentifier("prototype")
    # cell = UITableViewCell.alloc.init
    cell.viewWithTag('1').text = users[indexPath.row - 1]['username']
    cell.viewWithTag('2').text = users[indexPath.row - 1]['password']
    cell
  end
  
  def tableView(tv, numberOfRowsInSection: num)
    self.users.size
  end
  
  
  # def becomeActive(notification)
  #   self.viewDidAppear(true)
  #   pf_users.refresh
  # end
  
end