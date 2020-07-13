# Bank Tech Test

## Specification

Build a program that can interact with the REPL that can do the following:

1. Deposits and withdrawal
2. Account Statement printing;
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

### User Stories

As a customer
So I can manage my finances
I'd like to create an account 

  unit test: Creation of the Account class
  test passed. 

As a customer 
So I can save my money
I'd like to deposit money into my account

As a customer 
So that I can know my money is safe
I'd like to get see confirmation of a successful deposit

  unit test. Customer can deposit money and get confirmation if successful.
  Test passed.

As a customer 
So that I enter the correct details 
I'd like to make sure I'm protected against incorrect inputs. 

  unit test. Customer will get error message if input is not a integer
  


  <!-- unit test. Customer tries to deposit invalid argument and gets and error.  -->
  



As a customer 
I'd like to withdraw money from my account
So I can use it to spend.
  unit test. Customer can withdraw money and get confirmation if successful.
  Test passed.
 
