package dto;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;

//import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
//import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

import lombok.Data;

@Entity
@Data
public class BankAccount {
  @Id
  @GeneratedValue(generator = "acno")
  @SequenceGenerator(initialValue = 200000120,allocationSize = 1,sequenceName = "acno",name = "acno")
	Long account_no;
	String account_type;
	double amount;
	boolean status;
	double aclimit;

	@ManyToOne
	customer customer;
	
	@OneToMany(cascade = CascadeType.ALL)
	List<Transaction>transactions;
}




