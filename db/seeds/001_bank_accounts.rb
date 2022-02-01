BankAccount.find_or_create_by(name: 'Chase', account_type: 'Checking', starting_balance: 5000, low_balance_alert: 500)
BankAccount.find_or_create_by(name: 'Wells Fargo', account_type: 'Savings', starting_balance: 10000, low_balance_alert: 2500)
BankAccount.find_or_create_by(name: 'Credit', account_type: 'Credit', starting_balance: 20000, low_balance_alert: 5000)
BankAccount.destroy_all