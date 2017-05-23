public class ContactDao{
	public List<Contact> selectID(){

		return [select
					Id, name
				from
					Contact
				] ;

	}

}