First,
I want to render bank accout form in index.html
- inserted a form in vanilla html in index.html

then,
I want to render the bank account card
- invoke renderBankAccounts()

then,
I want to attach an event listener on all html elements with class of 'view'
iterate over all buttons and add event listener for 'click'
once a click happens invoke getBankAccountTransactions(id)

also, remove #create-bank-account-form from .form-container, remove #bank-account-card from #container
also, attach event listener for 'submit' on #create-transaction-form
also, invoke renderNewTransactionForm
once submit event happens updateDom - update #transaction-card inner html value to ''
then, invoke getBankAccountTransactions(id)

#go-back button invokes a function that removes .transaction-form-container, #bank-account-card, #transaction-card from #container
and, appends #create-bank-account-form to .form-container

FIX ISSUES - 
I can't view newly created bank account transactions index. Need additional conditions in Transactions controller i think

I need to iterate over my transaction object in renderTransactionCard() - unaware of the correct syntax

look into element.insertAdjacentHTML() - probably going to replace .innerHTML += in index.js files everywhere
