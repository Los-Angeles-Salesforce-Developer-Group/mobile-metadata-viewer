public with sharing class MobileMetadataViewerController{
    public List<ApexClass> getAllClasses(){
        List<ApexClass> cList = mmdv_ApexClassesSelector.newInstance().getAllClassesLimit2000();
        return cList;
    }
    
    public List<ApexTrigger> getAllTriggers(){
        List<ApexTrigger> tList = new mmdv_ApexTriggersSelector().getAllTriggersLimit2000();
        return tList;
    }
    
    public List<ApexComponent> getAllComponents(){
        List<ApexComponent> cList = new mmdv_VisualforceComponentsSelector().getAllComponentsLimit2000();
        return cList;
    }
    
    public List<ApexPage> getAllPages(){
        List<ApexPage> pList = new mmdv_VisualforcePagesSelector().getAllPagesLimit2000();
        return pList;
    }
}