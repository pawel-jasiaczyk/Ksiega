CREATE TABLE debtors_obligees (
  debtor_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  debtor_name VARCHAR(50)
);

CREATE TABLE debts (
  transaction_id INT UNSIGNED NOT NULL,
  debtor_id INT UNSIGNED NOT NULL, 
  debt_rate_numerator INT UNSIGNED NOT NULL,
  debt_rate_denominator INT UNSIGNED NOT NULL,
  FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id),
  FOREIGN KEY (debtor_id) REFERENCES debtors_obligees(debtor_id)
);
