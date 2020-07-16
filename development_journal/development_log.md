### Domain Table - Account

| Class       | Messages  |
| :---        |  ----:    |
| Account     | .deposit(amount)  |
|             | .withdraw(amount)  |
|             | .statement  |
|             | @balance  |

### User Stories  

### User story 1 - Making Account Class
```
As a customer
So I can manage my finances
I'd like to create an account 
```
> - Unit test: Creation of the Account class. 
> - Test Failed. Red
> - Code: Created Account Class
> - Test passed. Green

**User story satisfied**

---

### User story 2/3 - Depositing and Balance
```
As a customer 
So I can save my money
I'd like to deposit money into my account

As a customer 
So that I can know my money is safe
I'd like to get see my balance increase after making a deposit.
```

> -  Unit test. Customer can deposit 10 and balance will return 10
> -  Test Failed. Red
> -  Code: Defined deposit method accepts an argument. Returns 10. 
> -  Test passed. Green


> -  Unit test. Customer can deposit 20 and balance will return 20
> - Test Failed. Red
> - Code: Added if else statemnet. 
> - Test passed. Green

> - Unit test. Customer can deposit 15 in 2 transactions and balance will return 30. 
> - Code: Added logic with balance instant variable.
> - Test passed. Green

**User story satisfied**

---

### User story 4/5 - Withdrawing and Balance
```
As a customer 
So that I can spend my money                                           
I'd like to withdraw money from my account

As a customer 
So that I can manage how much I'm spending
I'd like the balance to decrease by the amount withdrawn. 
```
> -  Unit test. Customer can withdraw 5 and balance will return -5. 
> - Test Failed. Red
> -  Code: Created withdraw method. Similar to deposit.
> -  Test passed.

**User story satisfied.**

---

### User story 6 - Statement
```
As a customer
So I can know the history of my account activities 
I'd like to print a statement.
```
> -  unit test: Customer can call statement and have it return all the transactions.
> -  Test Failed. Red
> -  Code: Created Statemnet method and hardcoded expected return.
> - Test passed.

**(*I will come back to this later.)**

---

## Transaction

Specification of the Transaction class
- when a deposit/withdrawal is made a time date is added and stored for every transaction.
- when a deposit/withdrawal is made the credit amount is stored
- when a deposit/withdrawal is made the balance at that point is stored.
- when a deposit/withdrawal is made the debit amount is added and stored.

### Domain Model - Transaction

| Class       | Messages  |
| :---        |  ----:    |
| Transaction | @credit   |
|             | @date     |
|             | @debit    |
|             | @balance  |


### User story 7
```
As a customer
So I can track each of my transactions
I'd like my transaction to include a date.
```

> - Unit test: Transation object returns a new date when initialized.
> - Code: Created display method which returns date in expected format.
> - Test passed. Green. 

**User story satisfied.**

---

### User story 8
``` 
As a customer
So I can track each deposit
I'd like my transaction to include the credit amount.
```

> - Unit test: Transaction object returns credit and date when initialized with credit argument.
> - Code: Initalized with credit set to nil by default.
> - Test passed. Green.

**User story satisfied.**

---

### User story 9
```
As a customer 
So I can track each withdrawals
I'd like my transaction to include the debit amount.
```

> - Unit test: Transaction objects returns debit and date amount when initialized
> - Code: Initalized with debit set to nil by default.
> - Test passed. Green

**User story satisfied.**

---

### User story 10
```
As a customer 
So I can track my balance after each transaction
I'd like my transaction to include the balance amount.
```

> - Unit test: Transaction object returns balance amount when initalized with credit or debit amount..
> - Code implemented
> - Test passed. Green

**User story satisfied.**

---

## Refactor

### Account Refactor with Transaction
 - Account class now interacts with the transaction class.
 - Each transaction is now stored in "account_activity" instant variable.
 
### Statement Refactor with Transaction
 - *Statement now interates through "account_activity" and prints the elements stored to output. 

## Feature test

- Added a feature test to make sure the account object is outputting the correct information to the REPL.



