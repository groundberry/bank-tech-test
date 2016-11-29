# Specifications

## Requirements

- Allow to interact with the the code via IRB.
- Show deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).


## Acceptance criteria

- Given a client makes a *deposit* of *1000* on 10-01-2012
- And a *deposit* of *2000* on 13-01-2012
- And a *withdrawal* of *500* on 14-01-2012
- When she prints her *bank statement* she would see:

```
date       || credit || debit   || balance  
14/01/2012 ||        || 500.00  || 2500.00  
13/01/2012 || 2000.00||         || 3000.00  
10/01/2012 || 1000.00||         || 1000.00
```

## User stories

```
As an account owner  
So that I can open a new account  
I should be able to see an initial balance of 0  

As an account owner  
So that I can make a deposit  
I should be able to specify the amount I want to put in my account  

As an account owner  
So that I can make a withdrawal    
I should be able to specify the amount I want to take from my account  

As an account owner  
So that I can see the balance of my account  
I should be able to print a bank statement  

As an account owner  
So that I don't run out of balance  
I should be able to receive a message when my balance is less than a minimum amount  
```

## irb
```
$ irb
irb(main):001:0> require './lib/bank_account.rb'
=> true
irb(main):002:0> account = BankAccount.new
=> #<BankAccount:0x007f922404f250 @date="29/11/2016 17:18", @credit=0, @debit=0, @balance=0>
irb(main):003:0> account.deduct_amount(10)
RuntimeError: There is not enough balance in your account
	from /Users/blanca/Documents/Projects/tech-tests/bank-tech-test/lib/bank_account.rb:22:in `deduct_amount'
	from (irb):3
	from /Users/blanca/.rbenv/versions/2.3.1/bin/irb:11:in `<main>'
irb(main):004:0> account.check_balance
=> 0
irb(main):005:0> account.add_amount(100)
=> 100
irb(main):006:0> account.deduct_amount(40)
=> 60
irb(main):007:0> account.credit
=> 100
irb(main):008:0> account.debit
=> 40
irb(main):009:0> account.check_balance
=> 60
irb(main):010:0> statement = BankStatement.new
=> #<BankStatement:0x007f92243fa238 @bank_statement=[["date       || credit ||  debit  || balance"]]>
irb(main):011:0> statement.create_bank_statement
=> [["date       || credit ||  debit  || balance"], ["29/11/2016 17:19 ||   50   ||     10  ||   40"]]
irb(main):012:0> account.add_amount(50)
=> 110
irb(main):013:0> account.deduct_amount(20)
=> 90
irb(main):014:0> account.check_balance
=> 90
irb(main):015:0> statement.print_bank_statement
date             || credit ||  debit  || balance
29/11/2016 17:19 ||   50   ||     10  ||   40
```
