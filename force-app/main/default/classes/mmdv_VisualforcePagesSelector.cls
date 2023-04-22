public class mmdv_VisualforcePagesSelector extends fflib_SObjectSelector {
    public Schema.SObjectType getSObjectType() {
        return ApexPage.SObjectType;
    }
    
    public List<Schema.SObjectField> getSObjectFieldList() {
        return new List<Schema.SObjectField>{
            ApexPage.Id, 
            ApexPage.Name, 
            ApexPage.NamespacePrefix, 
            ApexPage.ApiVersion, 
            ApexPage.Markup, 
            ApexPage.ControllerKey,
            ApexPage.ControllerType
        };
    }

    public List<ApexPage> getAllPagesLimit2000() {
        return (List<ApexPage>)Database.query(this.newQueryFactory().setLimit(2000).toSOQL());
    }
}