public without sharing class VisualforcePagesSelector {
    public List<ApexPage> getAllPagesLimit2000() {
        return [
            SELECT Id, Name, NamespacePrefix, ApiVersion, Markup, ControllerKey,ControllerType
            FROM ApexPage
            ORDER BY Name ASC
            LIMIT 2000
        ];
    }
}