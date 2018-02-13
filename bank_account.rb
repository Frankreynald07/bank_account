class BankAccount
  @@minimum_balance = 100
  attr_accessor :balance
  def initialize(opening_balance, client_name)
    @balance = opening_balance
    if @balance < 200
        raise ArgumentError.new "minimum balance not met"
    end
  end
  def self.minimum_balance=(minimum_balance)
    @@minimum_balance = minimum_balance
     return @@minimum_balance
  end
  def self.minimum_balance
    @@minimum_balance
  end
  def deposit(amount)
    @balance += amount
  end
  def withdraw(w_amount)
    if w_amount > @balance
      begin
        raise StandardError.new "insufficient funds"
      rescue
        return nil
      end
    end
    @balance -= w_amount
  end
def transfer(amount, bank_account)
  @balance -= amount
  bank_account.deposit(amount)
  end
end
