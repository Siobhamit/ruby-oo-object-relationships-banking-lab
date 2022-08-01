class BankAccount
    attr_accessor :status, :balance
    attr_reader :name

def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
end

def deposit(money)
    @balance += money
    @balance
end

def display_balance
    says = "Your balance is $#{@balance}."
says
end

def valid?
     @status == "open" && @balance > 0 ? true : false
end

def close_account
    self.status = "closed"
end


end
