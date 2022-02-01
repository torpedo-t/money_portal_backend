Transaction.find_or_create_by(bank_account_id: 1, amount: 25, transaction_type: 'transfer', memo: 'pizza')
Transaction.find_or_create_by(bank_account_id: 2, amount: 50, transaction_type: 'withdrawal', memo: 'pay landscapers')
Transaction.find_or_create_by(bank_account_id: 3, amount: 100, transaction_type: 'point of sale', memo: 'necklace for wife')
Transaction.destroy_all