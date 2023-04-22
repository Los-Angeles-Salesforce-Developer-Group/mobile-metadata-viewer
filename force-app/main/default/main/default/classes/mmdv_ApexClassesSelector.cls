public class mmdv_ApexClassesSelector extends fflib_SObjectSelector {
    public static mmdv_ApexClassesSelector newInstance() {
        return new mmdv_ApexClassesSelector();
    }

    public Schema.SObjectType getSObjectType() {
        return ApexClass.SObjectType;
    }
    
    public List<Schema.SObjectField> getSObjectFieldList() {
        return new List<Schema.SObjectField>{
            ApexClass.Id, 
            ApexClass.Body, 
            ApexClass.Name, 
            ApexClass.NamespacePrefix, 
            ApexClass.ApiVersion, 
            ApexClass.IsValid, 
            ApexClass.LengthWithoutComments
        };
    }

    public List<ApexClass> getAllClassesLimit2000() {
        return (List<ApexClass>)Database.query(this.newQueryFactory().setLimit(2000).toSOQL());
    }
}