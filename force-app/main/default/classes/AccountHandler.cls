public without sharing class AccountHandler extends TriggerHandler{
    private List<Account> newAccounts;
    private Map<Id, Account> mapOldAccountsById;
    private Map<String, RecordTypeInfo> accountRecTypeInfoByDevName;
    private Map<String, RecordTypeInfo> caseRecTypeInfoByDevName;
    Set<Id> setFailedAccIds; //Set to store ID of account with Duplicate UON
    
    public AccountHandler() {

        this.accountRecTypeInfoByDevName = SObjectType.Account.getRecordTypeInfosByDeveloperName();
        this.caseRecTypeInfoByDevName = SObjectType.Case.getRecordTypeInfosByDeveloperName();
	    this.newAccounts = (List<Account>) Trigger.new;
        this.mapOldAccountsById = (Map<Id, Account>) Trigger.oldMap;
    }
    
    //before insert
    public override void beforeInsert() { 
    }
    
    //after Insert
    public override void afterInsert() { 
    }
    
    //before Update
    public override void beforeUpdate() {
    }
    
    //after Update
    public override void afterUpdate() {
    }
}