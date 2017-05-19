public class ContactDao{

	public final UpdateDao updateDao = new UpdateDao(Contact.getSObjectType());

	public List<Contact> selectByShopNameForAOCheck(String shopName, List<String> shopNames){

		return [select
					Id
				,   RMS_ShopNAME__c
				,   RMS_ShopNAME_Kana__c
				,   RMS_ShopURL__c
				,   RMS_Flag__c
				,   RamosID__c
				,   Name_SHOP__c
				,   Name_SHOP_kana__c
				,   Contact.Account.Name
				,   AO_status__c
				,   OPE_status__c
				,   RMS_CLOSE_S__c
				,   RMS_CLOSE_H__c
				from
					Contact
				where
					RMS_ShopNAME__c = :shopName
				or  Name_SHOP__c = :shopName
				or  RMS_ShopNAME__c in :shopNames
				or  Name_SHOP__c in :shopNames
				limit 200] ;

	}

	public List<Contact> selectByLikeRakutenShopNameForAOCheck(String shopName){

		return [select
					Id
				,   RMS_ShopNAME__c
				,   RMS_ShopNAME_Kana__c
				,   RMS_ShopURL__c
				,   RMS_Flag__c
				,   RamosID__c
				,   Name_SHOP__c
				,   Name_SHOP_kana__c
				,   Contact.Account.Name
				,   AO_status__c
				,   OPE_status__c
				,   RMS_CLOSE_S__c
				,   RMS_CLOSE_H__c
				from
					Contact
				where
					RMS_ShopNAME__c like :(shopName + '%' + '楽天市場店')
				or  RMS_ShopNAME__c like :(shopName + '%' + '楽天市場支店')
				or  RMS_ShopNAME__c like :(shopName + '%' + '楽天市場SHOP')
				or  RMS_ShopNAME__c like :(shopName + '%' + '楽天市場shop')
				or  RMS_ShopNAME__c like :(shopName + '%' + '楽天市場ＳＨＯＰ')
				or  RMS_ShopNAME__c like :(shopName + '%' + '楽天市場ｓｈｏｐ')
				or  Name_SHOP__c like :(shopName + '%' + '楽天市場店')
				or  Name_SHOP__c like :(shopName + '%' + '楽天市場支店')
				or  Name_SHOP__c like :(shopName + '%' + '楽天市場SHOP')
				or  Name_SHOP__c like :(shopName + '%' + '楽天市場shop')
				or  Name_SHOP__c like :(shopName + '%' + '楽天市場ＳＨＯＰ')
				or  Name_SHOP__c like :(shopName + '%' + '楽天市場ｓｈｏｐ')
				limit 200] ;

	}

	public List<Contact> selectByLikeShopNameForAOCheck(List<String> shopNames){

		return [select
					Id
				,   RMS_ShopNAME__c
				,   RMS_ShopNAME_Kana__c
				,   RMS_ShopURL__c
				,   RMS_Flag__c
				,   RamosID__c
				,   Name_SHOP__c
				,   Name_SHOP_kana__c
				,   Contact.Account.Name
				,   AO_status__c
				,   OPE_status__c
				,   RMS_CLOSE_S__c
				,   RMS_CLOSE_H__c
				from
					Contact
				where
					RMS_ShopNAME__c like :shopNames[0]
				or  RMS_ShopNAME__c like :shopNames[1]
				or  RMS_ShopNAME__c like :shopNames[2]
				or  RMS_ShopNAME__c like :shopNames[3]
				or  RMS_ShopNAME__c like :shopNames[4]
				or  RMS_ShopNAME__c like :shopNames[5]
				or  RMS_ShopNAME__c like :shopNames[6]
				or  RMS_ShopNAME__c like :shopNames[7]
				or  RMS_ShopNAME__c like :shopNames[8]
				or  RMS_ShopNAME__c like :shopNames[9]
				or  RMS_ShopNAME__c like :shopNames[10]
				or  RMS_ShopNAME__c like :shopNames[11]
				or  RMS_ShopNAME__c like :shopNames[12]
				or  RMS_ShopNAME__c like :shopNames[13]
				or  RMS_ShopNAME__c like :shopNames[14]
				or  RMS_ShopNAME__c like :shopNames[15]
				or  RMS_ShopNAME__c like :shopNames[16]
				or  RMS_ShopNAME__c like :shopNames[17]
				or  RMS_ShopNAME__c like :shopNames[18]
				or  RMS_ShopNAME__c like :shopNames[19]
				or  RMS_ShopNAME__c like :shopNames[20]
				or  RMS_ShopNAME__c like :shopNames[21]
				or  RMS_ShopNAME__c like :shopNames[22]
				or  RMS_ShopNAME__c like :shopNames[23]
				or  RMS_ShopNAME__c like :shopNames[24]
				or  RMS_ShopNAME__c like :shopNames[25]
				or  RMS_ShopNAME__c like :shopNames[26]
				or  RMS_ShopNAME__c like :shopNames[27]
				or  RMS_ShopNAME__c like :shopNames[28]
				or  RMS_ShopNAME__c like :shopNames[29]
				or  RMS_ShopNAME__c like :shopNames[30]
				or  RMS_ShopNAME__c like :shopNames[31]
				or  RMS_ShopNAME__c like :shopNames[32]
				or  RMS_ShopNAME__c like :shopNames[33]
				or  RMS_ShopNAME__c like :shopNames[34]
				or  RMS_ShopNAME__c like :shopNames[35]
				or  RMS_ShopNAME__c like :shopNames[36]
				or  RMS_ShopNAME__c like :shopNames[37]
				or  RMS_ShopNAME__c like :shopNames[38]
				or  RMS_ShopNAME__c like :shopNames[39]
				or  RMS_ShopNAME__c like :shopNames[40]
				or  RMS_ShopNAME__c like :shopNames[41]
				or  RMS_ShopNAME__c like :shopNames[42]
				or  RMS_ShopNAME__c like :shopNames[43]
				or  RMS_ShopNAME__c like :shopNames[44]
				or  RMS_ShopNAME__c like :shopNames[45]
				or  RMS_ShopNAME__c like :shopNames[46]
				or  RMS_ShopNAME__c like :shopNames[47]
				or  RMS_ShopNAME__c like :shopNames[48]
				or  RMS_ShopNAME__c like :shopNames[49]
				or  RMS_ShopNAME__c like :shopNames[50]
				or  RMS_ShopNAME__c like :shopNames[51]
				or  RMS_ShopNAME__c like :shopNames[52]
				or  RMS_ShopNAME__c like :shopNames[53]
				or  RMS_ShopNAME__c like :shopNames[54]
				or  RMS_ShopNAME__c like :shopNames[55]
				or  RMS_ShopNAME__c like :shopNames[56]
				or  RMS_ShopNAME__c like :shopNames[57]
				or  RMS_ShopNAME__c like :shopNames[58]
				or  RMS_ShopNAME__c like :shopNames[59]
				or  RMS_ShopNAME__c like :shopNames[60]
				or  RMS_ShopNAME__c like :shopNames[61]
				or  RMS_ShopNAME__c like :shopNames[62]
				or  RMS_ShopNAME__c like :shopNames[63]
				or  Name_SHOP__c like :shopNames[0]
				or  Name_SHOP__c like :shopNames[1]
				or  Name_SHOP__c like :shopNames[2]
				or  Name_SHOP__c like :shopNames[3]
				or  Name_SHOP__c like :shopNames[4]
				or  Name_SHOP__c like :shopNames[5]
				or  Name_SHOP__c like :shopNames[6]
				or  Name_SHOP__c like :shopNames[7]
				or  Name_SHOP__c like :shopNames[8]
				or  Name_SHOP__c like :shopNames[9]
				or  Name_SHOP__c like :shopNames[10]
				or  Name_SHOP__c like :shopNames[11]
				or  Name_SHOP__c like :shopNames[12]
				or  Name_SHOP__c like :shopNames[13]
				or  Name_SHOP__c like :shopNames[14]
				or  Name_SHOP__c like :shopNames[15]
				or  Name_SHOP__c like :shopNames[16]
				or  Name_SHOP__c like :shopNames[17]
				or  Name_SHOP__c like :shopNames[18]
				or  Name_SHOP__c like :shopNames[19]
				or  Name_SHOP__c like :shopNames[20]
				or  Name_SHOP__c like :shopNames[21]
				or  Name_SHOP__c like :shopNames[22]
				or  Name_SHOP__c like :shopNames[23]
				or  Name_SHOP__c like :shopNames[24]
				or  Name_SHOP__c like :shopNames[25]
				or  Name_SHOP__c like :shopNames[26]
				or  Name_SHOP__c like :shopNames[27]
				or  Name_SHOP__c like :shopNames[28]
				or  Name_SHOP__c like :shopNames[29]
				or  Name_SHOP__c like :shopNames[30]
				or  Name_SHOP__c like :shopNames[31]
				or  Name_SHOP__c like :shopNames[32]
				or  Name_SHOP__c like :shopNames[33]
				or  Name_SHOP__c like :shopNames[34]
				or  Name_SHOP__c like :shopNames[35]
				or  Name_SHOP__c like :shopNames[36]
				or  Name_SHOP__c like :shopNames[37]
				or  Name_SHOP__c like :shopNames[38]
				or  Name_SHOP__c like :shopNames[39]
				or  Name_SHOP__c like :shopNames[40]
				or  Name_SHOP__c like :shopNames[41]
				or  Name_SHOP__c like :shopNames[42]
				or  Name_SHOP__c like :shopNames[43]
				or  Name_SHOP__c like :shopNames[44]
				or  Name_SHOP__c like :shopNames[45]
				or  Name_SHOP__c like :shopNames[46]
				or  Name_SHOP__c like :shopNames[47]
				or  Name_SHOP__c like :shopNames[48]
				or  Name_SHOP__c like :shopNames[49]
				or  Name_SHOP__c like :shopNames[50]
				or  Name_SHOP__c like :shopNames[51]
				or  Name_SHOP__c like :shopNames[52]
				or  Name_SHOP__c like :shopNames[53]
				or  Name_SHOP__c like :shopNames[54]
				or  Name_SHOP__c like :shopNames[55]
				or  Name_SHOP__c like :shopNames[56]
				or  Name_SHOP__c like :shopNames[57]
				or  Name_SHOP__c like :shopNames[58]
				or  Name_SHOP__c like :shopNames[59]
				or  Name_SHOP__c like :shopNames[60]
				or  Name_SHOP__c like :shopNames[61]
				or  Name_SHOP__c like :shopNames[62]
				or  Name_SHOP__c like :shopNames[63]
				limit 200] ;

	}

	public List<Contact> selectByShopNameKanaForAOCheck(String shopNameKana){

		return [select
					Id
				,   RMS_ShopNAME__c
				,   RMS_ShopNAME_Kana__c
				,   Name_SHOP_kana__c
				,   RMS_ShopURL__c
				,   RMS_Flag__c
				,   RamosID__c
				,   Contact.Account.Name
				,   AO_status__c
				,   OPE_status__c
				,   RMS_CLOSE_S__c
				,   RMS_CLOSE_H__c
				from
					Contact
				where
					RMS_ShopNAME_Kana__c = :shopNameKana
				or  Name_SHOP_kana__c = :shopNameKana
				limit 200] ;

	}

	public List<Contact> selectByUrlForAOCheck(String url, List<String> urls){

		String delLastChar = StringUtil.delLastChar(url) ;

		return [select
					Id
				,   RMS_ShopNAME__c
				,   RMS_ShopNAME_Kana__c
				,   RMS_ShopURL__c
				,   RMS_Flag__c
				,   RamosID__c
				,   Name_URL__c
				,   Name_URL2__c
				,   Contact.Account.Name
				,   AO_status__c
				,   OPE_status__c
				,   RMS_CLOSE_S__c
				,   RMS_CLOSE_H__c
				from
					Contact
				where
					RMS_ShopURL__c = :url
				or  Name_URL__c = :url
				or  Name_URL2__c = :url
				or  RMS_ShopURL__c in :urls
				or  Name_URL__c in :urls
				or  Name_URL2__c in :urls
				limit 200] ;

	}

	public List<Contact> selectByLikeUrlForAOCheck(List<String> urls){

		return [select
					Id
				,   RMS_ShopNAME__c
				,   RMS_ShopNAME_Kana__c
				,   RMS_ShopURL__c
				,   RMS_Flag__c
				,   RamosID__c
				,   Name_URL__c
				,   Name_URL2__c
				,   Contact.Account.Name
				,   AO_status__c
				,   OPE_status__c
				,   RMS_CLOSE_S__c
				,   RMS_CLOSE_H__c
				from
					Contact
				where
					RMS_ShopURL__c like :urls[0]
				or  RMS_ShopURL__c like :urls[1]
				or  RMS_ShopURL__c like :urls[2]
				or  RMS_ShopURL__c like :urls[3]
				or  RMS_ShopURL__c like :urls[4]
				or  RMS_ShopURL__c like :urls[5]
				or  RMS_ShopURL__c like :urls[6]
				or  RMS_ShopURL__c like :urls[7]
				or  RMS_ShopURL__c like :urls[8]
				or  RMS_ShopURL__c like :urls[9]
				or  RMS_ShopURL__c like :urls[10]
				or  RMS_ShopURL__c like :urls[11]
				or  RMS_ShopURL__c like :urls[12]
				or  RMS_ShopURL__c like :urls[13]
				or  RMS_ShopURL__c like :urls[14]
				or  RMS_ShopURL__c like :urls[15]
				or  RMS_ShopURL__c like :urls[16]
				or  RMS_ShopURL__c like :urls[17]
				or  RMS_ShopURL__c like :urls[18]
				or  RMS_ShopURL__c like :urls[19]
				or  RMS_ShopURL__c like :urls[20]
				or  RMS_ShopURL__c like :urls[21]
				or  Name_URL__c like :urls[0]
				or  Name_URL__c like :urls[1]
				or  Name_URL__c like :urls[2]
				or  Name_URL__c like :urls[3]
				or  Name_URL__c like :urls[4]
				or  Name_URL__c like :urls[5]
				or  Name_URL__c like :urls[6]
				or  Name_URL__c like :urls[7]
				or  Name_URL__c like :urls[8]
				or  Name_URL__c like :urls[9]
				or  Name_URL__c like :urls[10]
				or  Name_URL__c like :urls[11]
				or  Name_URL__c like :urls[12]
				or  Name_URL__c like :urls[13]
				or  Name_URL__c like :urls[14]
				or  Name_URL__c like :urls[15]
				or  Name_URL__c like :urls[16]
				or  Name_URL__c like :urls[17]
				or  Name_URL__c like :urls[18]
				or  Name_URL__c like :urls[19]
				or  Name_URL__c like :urls[20]
				or  Name_URL__c like :urls[21]
				or  Name_URL2__c like :urls[0]
				or  Name_URL2__c like :urls[1]
				or  Name_URL2__c like :urls[2]
				or  Name_URL2__c like :urls[3]
				or  Name_URL2__c like :urls[4]
				or  Name_URL2__c like :urls[5]
				or  Name_URL2__c like :urls[6]
				or  Name_URL2__c like :urls[7]
				or  Name_URL2__c like :urls[8]
				or  Name_URL2__c like :urls[9]
				or  Name_URL2__c like :urls[10]
				or  Name_URL2__c like :urls[11]
				or  Name_URL2__c like :urls[12]
				or  Name_URL2__c like :urls[13]
				or  Name_URL2__c like :urls[14]
				or  Name_URL2__c like :urls[15]
				or  Name_URL2__c like :urls[16]
				or  Name_URL2__c like :urls[17]
				or  Name_URL2__c like :urls[18]
				or  Name_URL2__c like :urls[19]
				or  Name_URL2__c like :urls[20]
				or  Name_URL2__c like :urls[21]
				limit 200] ;

	}

	public List<Contact> selectAllShopName(){
		return [select RMS_shopNAME__c from Contact limit 200] ;
	}

	public List<Contact> selectByEMail(String eMail){

		if(eMail == null || eMail.length() == 0){
			return new List<Contact>() ;
		}

		return [select Id, OwnerId from Contact where Email = :eMail order by CreatedDate desc] ;
	}
	public List<Contact> selectByEMailorEmail_Rakuten(String eMail){
		
		if(eMail == null || eMail.length() == 0){
			return new List<Contact>() ;
		}
		
		String emailLike = email + '%' ;
		return [select Id, OwnerId, RMS_Flag__c from Contact where Email = :eMail or Email_Rakuten__c like :emailLike order by CreatedDate desc] ;
	}

	public List<Contact> selectDetailByEMail(String eMail){

		if(eMail == null || eMail.length() == 0){
			return new List<Contact>() ;
		}

		return [select Id, OwnerId, AccountId, RMS_ShopNAME__c, Phone, ECC_group__c from Contact where Email = :eMail order by CreatedDate desc] ;
	}
	
	public List<Contact> selectDetailByEMailorEmail_Rakuten(String eMail){
		
		if(eMail == null || eMail.length() == 0){
			return new List<Contact>() ;
		}

		String emailLike = email + '%' ;
		return [select Id, OwnerId, AccountId, RMS_ShopNAME__c, Phone, ECC_group__c from Contact where Email = :eMail or Email_Rakuten__c like :emailLike order by CreatedDate desc] ;
	}

	public List<Contact> selectByRamosId(String ramosId){

		if(ramosId == null || ramosId.length() == 0){
			return new List<Contact>() ;
		}

		return [select Name, RamosID__c, RMS_ShopNAME__c, RMS_ShopURL__c, Phone, Email from Contact where RamosID__C = :ramosId] ;

	}

	public Map<Id, Contact> selectById(Set<Id> ids){

		if(ids == null || ids.size() == 0){
			return new Map<Id, Contact>() ;
		}

		return new Map<Id, Contact>([select Id, RamosId__c, Owner_back__c from Contact where Id in :ids limit 200]) ;

	}

	public List<Contact> selectByUrl(String url){

		if(url == null || url.length() == 0){
			return new List<Contact>() ;
		}

		return [select Id from Contact where RMS_ShopURL__c = :url order by CreatedDate desc] ;
	}

	public List<Contact> selectByUrlWithRecordType(String url, String recordType){

		if(url == null || url.length() == 0 || recordType == null || recordType.length() == 0){
			return new List<Contact>() ;
		}

		return [select Id from Contact where RMS_ShopURL__c = :url and RecordTypeId = :recordType order by CreatedDate desc] ;

	}

	public List<Contact> selectById(String id){

		if(id == null || id.length() == 0){
			return new List<Contact>() ;
		}

		return [select Id, RMS_ShopNAME__c, RMS_ShopURL__c, Email from Contact where Id = :id] ;

	}

	// 処理を追加
	public Map<Id, Contact> selectMapById(Set<Id> ids){

		if(ids == null || ids.isEmpty()){
			return new Map<Id, Contact>() ;
		}

		return new Map<Id, Contact>([select Id, RMS_ShopURL__c, RMS_ShopID__c, Email, AccountId, OwnerId, RMS_Flag__c, ECC_group__c, ECCML_Update__c, Owner.isActive from Contact where Id in :ids]) ;

	}

	public List<Contact> selectListById(Set<Id> ids){

		if(ids == null || ids.isEmpty()){
			return new List<Contact>() ;
		}

		return [SELECT Id, RMS_ShopURL__c, UniversityNumberOfApproach__c, RMS_ShopID__c, Owner.S_account__c FROM Contact WHERE Id in :ids] ;

	}

	public List<Contact> selectListByRMS_AO(Date startDate, Date endDate){
		return [select Id, RMS_ShopURL__c, RMS_ShopID__c from Contact
			where
				RMS_AO__c >= :startDate
			and	RMS_AO__c <= :endDate
			and	RMS_Flag__c != '退店済み'
			and (LastMonthAmountClaimed__c = null or LastMonthAmountClaimed__c <= 0)] ;
	}

	public List<Contact> selectListByRMS_OPEN(Date startDate, Date endDate){
		return [select Id, RMS_ShopURL__c, RMS_ShopID__c from Contact
			where
				RMS_OPEN__c >= :startDate
			and	RMS_OPEN__c <= :endDate
			and	RMS_Flag__c != '退店済み'
			and (LastMonthAmountClaimed__c = null or LastMonthAmountClaimed__c <= 0)] ;
	}

	public List<Contact> selectListByRMS_AOAndRMS_OPEN(Date aoStart, Date aoEnd, Date openStart, Date openEnd){
		return [select Id, RMS_ShopURL__c, RMS_ShopID__c from Contact
			where
				RMS_AO__c >= :aoStart
			and	RMS_AO__c <= :aoEnd
			and	RMS_OPEN__c >= :openStart
			and	RMS_OPEN__c <= :openEnd
			and	RMS_Flag__c != '退店済み'
			and (LastMonthAmountClaimed__c = null or LastMonthAmountClaimed__c <= 0)] ;
	}

	public Contact[] selectById(String columns, Set<Id> ids) {
		Contact[] contact = null;
		try {
			String query = 'SELECT ' + columns + ' FROM Contact WHERE Id IN :ids';
			contact = Database.query(query);
		} catch (QueryException e) {}
		return contact;
	}

	public Map<Id, Contact> selectMapById(String columns, Set<Id> ids) {
		Contact[] contact = null;
		Map<Id, Contact> contactMap = new Map<Id, Contact>();
		try {
			String query = 'SELECT Id, ' + columns + ' FROM Contact WHERE Id IN :ids';
			contact = Database.query(query);
			for (Contact c : contact) {
				contactMap.put(c.Id, c);
			}
		} catch (QueryException e) {}
		return contactMap;
	}

	public Contact[] selectByIdsCondRMSFlag(String columns, Set<Id> ids, Set<String> rmsFlags) {
		Contact[] contact = null;
		try {
			String query = 'SELECT ' + columns + ' FROM Contact WHERE Id IN :ids AND RMS_Flag__c IN :rmsFlags';
			contact = Database.query(query);
		} catch (QueryException e) {}
		return contact;
	}

	public Contact[] selectByEnterpriseIds(String columns, List<String> enterpriseIds) {
		Contact[] contact = null;
		try {
			String query = 'SELECT ' + columns + ' FROM Contact WHERE EnterpriseId__c IN :enterpriseIds';
			contact = Database.query(query);
		} catch (QueryException e) {}
		return contact;
	}
}