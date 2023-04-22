public class mmdv_VisualforceComponentsSelector extends fflib_SObjectSelector {
    public Schema.SObjectType getSObjectType() {
        return ApexComponent.SObjectType;
    }
    
    public List<Schema.SObjectField> getSObjectFieldList() {
        return new List<Schema.SObjectField>{
            ApexComponent.Id, 
            ApexComponent.Name, 
            ApexComponent.NamespacePrefix, 
            ApexComponent.ApiVersion, 
            ApexComponent.Markup, 
            ApexComponent.ControllerKey,
            ApexComponent.ControllerType
        };
    }

    public List<ApexComponent> getAllComponentsLimit2000() {
        return (List<ApexComponent>)Database.query(this.newQueryFactory().setLimit(2000).toSOQL());
    }
}