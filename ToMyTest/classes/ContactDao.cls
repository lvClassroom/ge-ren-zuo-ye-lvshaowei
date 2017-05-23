public class ContactDao{

	public List<Contact> selectById(ID id){

		if(id == null){
			return new List<Contact>() ;
		}

		return [SELECT Id FROM Contact] ;

	}

}