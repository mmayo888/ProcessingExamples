class Account {

  // Public fields of the class
  public String accountName;
  public String accountID;

  // Private data 
  private float accountBalance=0; 

  // Methods
  
  // Read the account balance
  public float getAccountBalance() {
    return accountBalance;
  }
  
  // Deposit an amount
  public void deposit(float amount) {
    accountBalance += amount;
  }
  
  // Withdraw an amount, as long as the balance does
  // not go negative
  public void withdraw(float amount) {
    if (accountBalance-amount>=0)
      accountBalance-=amount;
  }
}

