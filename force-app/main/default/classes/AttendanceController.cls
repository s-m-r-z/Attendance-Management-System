public with sharing class AttendanceController {

    
    @AuraEnabled
    public static String insertCheckIn(String employeeID, String Department){

            try{

                Attendance__c att = New Attendance__c();

                //att.checkIn__c = checkIn;
                att.employeeID__c = employeeID;
                att.Department__c	= Department;


                Insert att;

                return 'Success';
                
            }
            catch(Exception exp){

                throw new AuraException(exp);

            }
        
            
    }


    @AuraEnabled
    public static String insertCheckOut(String employeeID, String Department){

            try{

                Attendance__c att = New Attendance__c();

                //att.checkOut__c = checkOut;
                att.employeeID__c = employeeID;
                att.Department__c	= Department;

                
                Insert att;


                return 'Success';
                
            }
            catch(Exception exp){

                throw new AuraException(exp);

            }
        
            
    }


}
