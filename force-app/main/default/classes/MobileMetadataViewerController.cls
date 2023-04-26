public with sharing class MobileMetadataViewerController{
    public List<ApexClass> getAllClasses(){
        List<ApexClass> cList = new ApexClassesSelector().getAllClassesLimit2000();
        return cList;
    }
    
    public List<ApexTrigger> getAllTriggers(){
        List<ApexTrigger> tList = new ApexTriggersSelector().getAllTriggersLimit2000();
        return tList;
    }
    
    public List<ApexComponent> getAllComponents(){
        List<ApexComponent> cList = new VisualforceComponentsSelector().getAllComponentsLimit2000();
        return cList;
    }
    
    public List<ApexPage> getAllPages(){
        List<ApexPage> pList = new VisualforcePagesSelector().getAllPagesLimit2000();
        return pList;
    }
}