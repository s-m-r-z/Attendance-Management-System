trigger sendEmailTrigger on Leave__c (before insert) {



  List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();

      Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
      List<String> sendTo = new List<String>();
      sendTo.add('k180210@nu.edu.pk');
      sendTo.add('k180125@nu.edu.pk');
      sendTo.add('k173692@nu.edu.pk');
      
      mail.setToAddresses(sendTo);

      

      mail.setSubject('New Leave Request has been added'); 
      //String body = 'Dear ' + myContact.FirstName + ', ';
      String body = 'Dear HR Manager\n'; 
      body += '\nAn Employee has requested leaves\n';
      body += '\nFor more details you can visit\n';
      body += '\nhttps://login.salesforce.com';
      mail.setHtmlBody(body);

      mails.add(mail);

      Messaging.sendEmail(mails);






          // List<Messaging.SingleEmailMessage> mails =  new List<Messaging.SingleEmailMessage>();
          // List<String> sendTo = new List<String>();
          // sendTo.add('mehdizaidi212@gmail.com');
          // sendTo.add('k180210@nu.edu.pk');
          // for(Leave__c leave : trigger.new){
          //     Messaging.SingleEmailMessage mail =  new Messaging.SingleEmailMessage();
          //     mail.setToAddresses(sendTo);
          //     mail.setSubject('Leave Recrod has been Created for Record ID: '+ leave.Name);
          //     String body = 'A new Employee has requested for Leave';
          //     mail.setHtmlBody(body);
          //     mails.add(mail);
          // }
          // Messaging.sendEmail(mails);
            

      }
    
   
  