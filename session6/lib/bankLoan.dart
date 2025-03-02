/*Bank Loan Processing System
 Abstract Class: Loan
 Create an abstract class Loan with the following properties and methods:
    - borrowerName (String)
    - loanAmount (double)
    - interestRate (double)
    - Abstract method: double calculateMonthlyInstallment(int months).
 Loan Subclasses
 Three types of loans should be implemented:
    - PersonalLoan: Has a fixed 10% interest rate.
    - HomeLoan: Has a base 8% interest rate, but if loanAmount > 500,000, the rate increases to 9.5%.
    - CarLoan: Has a 7% interest rate, but if loanAmount > 50,000, it applies an additional 2% processing fee.
 LoanProcessingSystem Class
 Create a LoanProcessingSystem class that:
    - Stores a list of loans.
    - Provides methods to:
        - applyLoan(Loan loan): Adds a loan application to the system.
        - calculateInstallments(int months): Calculates the monthly installment for all loans.
         */
import 'dart:math';

void main() {
  LoanProcessingSystem system = LoanProcessingSystem();
  system.applyLoan(PersonalLoan(borrowerName: 'Ahmed', loanAmount: 7888));
  system.applyLoan(HomeLoan(borrowerName: 'Omar', loanAmount: 5000000));
  system.applyLoan(CarLoan(borrowerName: 'Ali', loanAmount: 450000));

  system.calculateInstallments(12);
}

abstract class Loan {
  String borrowerName;
  double loanAmount;
  double interestRate;

  Loan({
    required this.borrowerName,
    required this.loanAmount,
    required this.interestRate,
  });

  double calculateMonthlyInstallment(int months);
  double_calculateEmi(int months) {
    if (months == 0) {
      return 0;
    }
    double monthlyRate = interestRate / 12;
    return ((loanAmount * monthlyRate * pow(1 + monthlyRate, months)) /
        (pow(1 + monthlyRate, months) - 1));
  }
}

class PersonalLoan extends Loan {
  PersonalLoan({
    required String borrowerName,
    required double loanAmount,
  }) : super(
          borrowerName: borrowerName,
          loanAmount: loanAmount,
          interestRate: 0.10,
        );
  @override
  double calculateMonthlyInstallment(int months) {
    return double_calculateEmi(months);
  }
}

class HomeLoan extends Loan {
  HomeLoan({
    required String borrowerName,
    required double loanAmount,
  }) : super(
            borrowerName: borrowerName,
            loanAmount: loanAmount,
            interestRate: loanAmount > 500000 ? 0.950 : 0.80);
  @override
  double calculateMonthlyInstallment(int months) {
    return double_calculateEmi(months);
  }
}

class CarLoan extends Loan {
  CarLoan({
    required String borrowerName,
    required double loanAmount,
  }) : super(
            borrowerName: borrowerName,
            loanAmount: loanAmount,
            interestRate: 0.70) {
    if (loanAmount > 50000) {
      loanAmount += loanAmount * 0.20;
    }
  }
  @override
  double calculateMonthlyInstallment(int months) {
    return double_calculateEmi(months);
  }
}

class LoanProcessingSystem {
  List<Loan> _loans = [];
  void applyLoan(Loan loan) {
    _loans.add(loan);
    print(
        "Loan applied for ${loan.borrowerName} with amount ${loan.loanAmount}");
  }

  void calculateInstallments(int months) {
    for (var loan in _loans) {
      double emi = loan.calculateMonthlyInstallment(months);
      print(
          "${loan.borrowerName} 's monthly installment: ${emi.toStringAsFixed(2)}");
    }
  }
}
