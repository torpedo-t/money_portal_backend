Transaction.find_or_create_by(amount: 25, transaction_type: 'transfer', memo: 'pizza', bank_account_id: 1)
Transaction.find_or_create_by(amount: 50, transaction_type: 'withdrawal', memo: 'pay landscapers', bank_account_id: 2)
Transaction.find_or_create_by(amount: 100, transaction_type: 'point of sale', memo: 'necklace for wife', bank_account_id: 3)
# Transaction.destroy_all