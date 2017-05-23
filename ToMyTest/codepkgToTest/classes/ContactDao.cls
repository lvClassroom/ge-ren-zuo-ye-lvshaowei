public class ContactDao{
	public List<Contact> selectID(){

		return [select
					Id
				from
					Contact
				] ;

	}

}