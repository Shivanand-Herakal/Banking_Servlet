package dto;

import java.sql.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

import lombok.Data;

@Entity
@Data
public class customer {
 @Id
 @SequenceGenerator(initialValue = 100000011,allocationSize = 1,sequenceName = "custid",name="custid")
 @GeneratedValue(generator = "custid")
	int cust_id;
	String name;
	String email;
	String password;
	Long mobile;
	Date dob;
	String gender;

	
	@OneToMany
  List<BankAccount> account;
}
