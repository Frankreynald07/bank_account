require './bank_account'


describe BankAccount do

  context "has a balance"
  it "is created with an opening balance and the name of the client"
  it "can report it's balance"

context "making a deposit"
  it "balance is increased"

context "making a withdrawal"
  it "balance is decreased"

context "transfering funds"
  it "account balance is decreased"
  it "other account balance is increased"

context "minimum balance"
  it "raises an error if opening balance is too low"
  it "does NOT raise an error if opening balance is over minimum balance"
  it "allows the bank owner to change the minimum balance"

end
