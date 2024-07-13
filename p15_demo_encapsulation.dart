class BankAccount {
  // Private field to store the balance
  int _balance = 0;

  // Constructor to initialize the account with an initial balance
  BankAccount([int initialBalance = 0]) {
    if (initialBalance >= 0) {
      _balance = initialBalance;
    } else {
      throw ArgumentError('\nInitial balance cannot be negative');
    }
  }

  // Public method to deposit funds
  void deposit(int amount) {
    if (amount > 0) {
      _balance += amount;
    } else {
      throw ArgumentError('\nDeposit amount cannot be negative');
    }
  }

  // Public getter method to check the balance (read-only)
  int get balance => _balance;
}

void main() {
  // Create a bank account with an initial balance of 100
  BankAccount account = BankAccount(100);

  // Deposit 50
  account.deposit(50);

  // print(account._balance);

  // Print the balance using the getter (read-only)
  print('\nBalance: ${account.balance}');
}
