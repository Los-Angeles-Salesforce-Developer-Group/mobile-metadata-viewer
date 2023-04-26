public without sharing class ApexClassesSelector {
    public List<ApexClass> getAllClassesLimit2000() {
        return [
            SELECT Id, Body, Name, NamespacePrefix, ApiVersion, IsValid, LengthWithoutComments
            FROM ApexClass
            ORDER BY Name ASC
            LIMIT 2000
        ];
    }
}