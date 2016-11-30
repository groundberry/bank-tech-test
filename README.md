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
irb(main):001:0> require './lib/bank_account'
=> true
irb(main):002:0> acct = BankAccount.new
=> #<BankAccount:0x007f8cc184f350 @balance=0, @transactions=[]>
irb(main):003:0> acct.add_amount(1000)
=> 1000
irb(main):004:0> acct.add_amount(2000)
=> 3000
irb(main):005:0> acct.deduct_amount(5000)
RuntimeError: There is not enough balance in your account
irb(main):006:0> acct.deduct_amount(500)
=> 2500
irb(main):007:0> acct.print_last_transactions(3)
        date            ||   credit   ||    debit   ||  balance  
        30/11/2016      ||            ||     500    ||     2500   
        30/11/2016      ||    2000    ||            ||     3000   
        30/11/2016      ||    1000    ||            ||     1000  

```
