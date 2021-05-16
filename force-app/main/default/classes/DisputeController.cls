public with sharing class DisputeController {
    
    @AuraEnabled(cacheable=true)
    public static List<Dispute__c> findDisputes(String searchKey) {
        String key = '%' + searchKey + '%';
        
        return [
            SELECT Dispute_Number__c, Dispute_ID__c, Dispute_Type__c, Petitioner__c, Responder__c
            FROM Dispute__c
            WHERE Name LIKE : key
        ];
        
    }
}
