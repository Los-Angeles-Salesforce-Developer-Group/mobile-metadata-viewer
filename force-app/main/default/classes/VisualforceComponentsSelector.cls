public without sharing class VisualforceComponentsSelector {
    public List<ApexComponent> getAllComponentsLimit2000() {
        return [
            SELECT Id, Name, NamespacePrefix, ApiVersion, Markup, ControllerKey,ControllerType
            FROM ApexComponent
            ORDER BY Name ASC
            LIMIT 2000
        ];
    }
}