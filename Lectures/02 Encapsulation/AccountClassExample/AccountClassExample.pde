
// References to Account objects
Account annAccount, johnAccount;

void setup(){
  
  // Create Anne's account
  annAccount = new Account();
  annAccount.accountName = "Ann Jones";
  annAccount.accountID = "#2239738383";
  
  // Create John's account
  johnAccount = new Account();
  johnAccount.accountName = "John Smith";
  johnAccount.accountID = "#873636363";
  
  // Do some transactions
  johnAccount.deposit(5);
  annAccount.deposit(35);
  johnAccount.withdraw(1000);
  johnAccount.deposit(3);
  annAccount.withdraw(15);
  
  // Print the balances
  println("Ann's balance: "+annAccount.getAccountBalance());
  println("John's balance: "+johnAccount.getAccountBalance());
  
  
}

void draw(){
}


