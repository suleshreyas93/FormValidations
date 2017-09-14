package dao;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Offers {

	private int id;
	
	//@NotEmpty
	@Size(min=5,max=100,message="Name must be more than 5 characters")
	private String name;
	
	//@NotEmpty
	@Pattern(regexp = ".*\\@.*\\..*",message="This does not appear to be a valid email address")
	private String email;
	
	//@NotEmpty
	@Size(min=20,max=100,message="Text too small")
	private String text;

	public Offers() {

	}

	public Offers(int id, String name, String email, String text) {

		this.id = id;
		this.name = name;
		this.email = email;
		this.text = text;
	}

	public Offers(String name, String email, String text) {

		this.id = id;
		this.name = name;
		this.email = email;
		this.text = text;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	@Override
	public String toString() {
		return "Offers [id=" + id + ", name=" + name + ", email=" + email + ", text=" + text + "]";
	}
	
	

}
