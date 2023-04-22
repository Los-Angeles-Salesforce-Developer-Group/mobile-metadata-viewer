@isTest
global class MobileMetadataViewerControllerTest{
    global static testmethod void testPopulateTable(){
        MobileMetadataViewerController ctrlr = new MobileMetadataViewerController();
        List<ApexClass>     lstClasses     = ctrlr.getAllClasses();
        List<ApexTrigger>   lstTriggers    = ctrlr.getAllTriggers();
        List<ApexPage>      lstPages       = ctrlr.getAllPages();
        List<ApexComponent> lstComponents  = ctrlr.getAllComponents();
        
        System.assertNotEquals(lstClasses, null);
        System.assertNotEquals(lstTriggers, null);
        System.assertNotEquals(lstPages, null);
        System.assertNotEquals(lstComponents, null);
    }
}