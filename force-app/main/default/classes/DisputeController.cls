/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-10-2021
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 * Modifications Log 
 * Ver   Date         Author                               Modification
 * 1.0   06-09-2021   ChangeMeIn@UserSettingsUnder.SFDoc   Initial Version
**/
public with sharing class DisputeController {
    
    /*
      
    Something is not  right. Fix this!

    */
    @AuraEnabled(cacheable=true)
    public static List<Dispute__c> findDisputes(String searchKey) {
        String key = '%' + searchKey + '%';
        
        List<Dispute__c> disputes = new List<Dispute__c>([
            SELECT Dispute_Number__c, Dispute_Type__c, Petitioner__c
            FROM Dispute__c
            WHERE Dispute_Number__c LIKE : key]);
        
       return disputes; 
        
    }
    
}
