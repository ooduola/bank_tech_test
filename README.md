# Bank Tech Test

## Specification

Build a program that can interact with the REPL that can do the following:

1. Deposits and withdrawal
2. Account Statement printing
  a. date 
  b. amount 
  c. balance 
3. Data can be kept in memory (no database needed)

## Acceptance criteria 

- Given a client makes a deposit of 1000 on 10-01-2012
- And a deposit of 2000 on 13-01-2012
- And a withdrawal of 500 on 14-01-2012
- When she prints her bank statement
- Then she would see

```
    date   || credit  || debit  || balance
14/01/2012 ||         || 500.00 || 2500.00
13/01/2012 || 2000.00 ||        || 3000.00
10/01/2012 || 1000.00 ||        || 1000.00
```

### Methods Table 

Deposit           | .deposit(amount) => increase balance
Withdraw          | .withdraw(amount) => decreases balance 
Accoutn Statement | .account_statement => returns date of deposit, withdrawals, balance on given day.

account.statement =

[ [date, credit_amount, debit_amount, balance_amount], [date, credit_amount, debit_amount, balance_amount]]

# date_now = Time.new
# date[value] = date_now
# log << date
# credit[value] = credit_amoutn
# log << credit
# debit[value] = debit_amount
# log << debit_amount
# log << balance 
# statement << log


## User story 4

As a customer
So I can know the history of my account activities 
I'd like the a statement to give me a summary of my transactions.

Spec 
-when a deposit is made a time date is created and stored.
-when a deposit is made the credit amount is stored
-when a deposit is made the balance at that point is stored.
-when a deposit is made the debit amount is autmatically set to nil. 

-when a withdrawal is made a time date is created and stored.
-when a withdrawal is made the credit amount is stored
-when a withdrawal is made the balance at that point is stored.
-when a withdrawal is made the debit amount is autmatically set to nil. 















### User Stories - Withdraw and Deposit. 

#### User story 1 | Making Account Class

As a customer
So I can manage my finances
I'd like to create an account 

  unit test: Creation of the Account class
  test passed. 

  User story satisfied

#### User story 2 - Depositing and Balance

As a customer 
So I can save my money
I'd like to deposit money into my account

As a customer 
So that I can know my money is safe
I'd like to get see my balance increase after making a deposit.

  unit test. Customer can deposit 10 and balance will return 10
  Test passed.

  unit test. Customer can deposit 20 and balance will return 20
  Code updated 
  Test passed. 

  unit test. Customer can deposit 15 over 2 transactions and balance will return 30. 
  Code updated.
  Test passed. 

  User story satisfied 

#### User story 3 

As a customer 
So that I can spend my money                                           
I'd like to withdraw money from my account

As a customer 
So that I can manage how much I'm spending
I'd like the balance to decrease by the amount withdrawn. 

   Unit test. Customer can withdraw 5 and balance will decrease by 5. 
   Code updated.
   Test passed.

   User story satisfied.


 #### User story 4 


