class BankAccount {
    let accountNumber: String
    let accountOwner: String
    private var balance: Double
    
    init(accountNumber: String, accountOwner: String, startingBalance: Double) {
        self.accountNumber = accountNumber
        self.accountOwner = accountOwner
        self.balance = startingBalance
    }
    
    func deposit(amount: Double) {
        guard amount > 0 else {
            print("Invalid deposit amount")
            return
        }
        balance += amount
        print("Deposit of \(amount) successfully processed. New balance: \(balance)")
    }
    
    func withdraw(amount: Double) {
        guard amount > 0 else {
            print("Invalid withdrawal amount")
            return
        }
        if balance >= amount {
            balance -= amount
            print("Withdrawal of \(amount) successfully processed. New balance: \(balance)")
        } else {
            print("Insufficient funds. Withdrawal not processed.")
        }
    }
    
    func getBalance() -> Double {
        return balance
    }
    
    func displayAccountInfo() {
        print("Account Number: \(accountNumber)")
        print("Account Owner: \(accountOwner)")
        print("Current Balance: \(balance)")
    }
}


let myAccount = BankAccount(accountNumber: "123456789", accountOwner: "Karina Dautova", startingBalance: 1000.0)
myAccount.displayAccountInfo()
myAccount.deposit(amount: 500.0)
myAccount.withdraw(amount: 200.0)
myAccount.displayAccountInfo()