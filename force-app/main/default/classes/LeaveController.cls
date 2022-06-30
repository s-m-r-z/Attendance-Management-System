public with sharing class LeaveController {
    

    @AuraEnabled
    public static String createLeave(Date to, Date frm ,String Reason){

            try{

                Leave__c Leave = New Leave__c();


                // Leave.To_Date__c = Date.newInstance(2022, 05, 28);
                // Leave.From_Date__c = Date.newInstance(2022, 06, 9);

                Leave.To_Date__c = to;
                Leave.From_Date__c = frm;
                Leave.Reason__c	= Reason;


                Insert Leave;



            return 'Success';

                
            }
            catch(Exception exp){

                throw new AuraException(exp);

            }
            
    }
}
