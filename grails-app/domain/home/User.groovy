package home

class User {

	String name
	String mobileNo
	String email
	String password
    static constraints = {
		name(maxSize:50)
		mobileNo(maxSize:50)
		email(maxSize:50,unique:true)
    }
}
