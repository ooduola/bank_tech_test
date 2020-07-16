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

## How I built this program
[Please find my development log to building this program here.](https://github.com/ooduola/bank_tech_test/blob/master/development_journal/development_log.md)


## Planning

### Domain Table - Account

| Class       | Messages  |
| :---        |  ----:    |
| Account     | .deposit(amount)  |
|             | .withdraw(amount)  |
|             | .statement  |
|             | @balance  |

## Domain Model - Transaction

| Class       | Messages  |
| :---        |  ----:    |
| Transaction | @credit   |
|             | @date     |
|             | @debit    |
|             | @balance  |

### User Stories  
```
As a customer
So I can manage my finances
I'd like to create an account 

As a customer 
So I can save my money
I'd like to deposit money into my account

As a customer 
So that I can know my money is safe
I'd like to get see my balance increase after making a deposit.

As a customer 
So that I can spend my money                                           
I'd like to withdraw money from my account

As a customer 
So that I can manage how much I'm spending
I'd like the balance to decrease by the amount withdrawn. 

As a customer
So I can know the history of my account activities 
I'd like to print a statement.

As a customer
So I can track each of my transactions
I'd like my transaction to include a date.

As a customer
So I can track each deposit
I'd like my transaction to include the credit amount.

As a customer 
So I can track each withdrawals
I'd like my transaction to include the debit amount.

As a customer 
So I can track my balance after each transaction
I'd like my transaction to include the balance amount.
```

