class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  
def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
  @amount = amount
  @status = "pending"
end

def valid?
  @sender.valid? && @receiver.valid? ? true : false

end

def execute_transaction
  if self.valid? && @sender.balance > @amount && self.status == "pending"
  @sender.balance -= @amount 
  @receiver.balance += @amount
  self.status = "complete"
  else
    self.status = "rejected"
    says = "Transaction rejected. Please check your account balance."
  says
end
end

def reverse_transfer
 if self.status == "complete" 
 @sender.balance += @amount 
 @receiver.balance -= @amount 
 self.status = "reversed"
 end
end

end
