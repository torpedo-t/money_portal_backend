Transaction.destroy_all
Transaction.find_or_create_by(amount: 25, transaction_type: 'Deposit', memo: 'pizza', bank_account_id: 1)
Transaction.find_or_create_by(amount: 50, transaction_type: 'Withdraw', memo: 'pay landscapers', bank_account_id: 2)
Transaction.find_or_create_by(amount: 100, transaction_type: 'Withdraw', memo: 'necklace for wife', bank_account_id: 3)
