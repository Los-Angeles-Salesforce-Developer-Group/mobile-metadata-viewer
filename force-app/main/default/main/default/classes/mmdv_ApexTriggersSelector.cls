public class mmdv_ApexTriggersSelector extends fflib_SObjectSelector {
    public Schema.SObjectType getSObjectType() {
        return ApexTrigger.SObjectType;
    }
    
    public List<Schema.SObjectField> getSObjectFieldList() {
        return new List<Schema.SObjectField>{
            ApexTrigger.Id, 
            ApexTrigger.Body, 
            ApexTrigger.Name, 
            ApexTrigger.NamespacePrefix, 
            ApexTrigger.ApiVersion, 
            ApexTrigger.IsValid, 
            ApexTrigger.LengthWithoutComments
        };
    }

    public List<ApexTrigger> getAllTriggersLimit2000() {
        return (List<ApexTrigger>)Database.query(this.newQueryFactory().setLimit(2000).toSOQL());
    }
}