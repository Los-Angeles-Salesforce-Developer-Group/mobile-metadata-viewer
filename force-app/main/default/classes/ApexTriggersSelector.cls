public without sharing class ApexTriggersSelector {
    public List<ApexTrigger> getAllTriggersLimit2000() {
        return [
            SELECT Id, Body, Name, NamespacePrefix, ApiVersion, IsValid, LengthWithoutComments
            FROM ApexTrigger
            ORDER BY Name
            LIMIT 2000
        ];
    }
}