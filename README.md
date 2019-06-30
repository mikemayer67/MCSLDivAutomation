# MCSLDivAutomation
Suite of perl and sql scripts used to generate an MCSL division website

To use this suite of tools, you will need perl installed on your local machine.
 * You also need to have the DBD::mysql module installed
 
You will also need a local mysql server.
 * You will need to create a schema named div#_yyyy (where # is division letter and yyyy is the current year)
 * You will need to update the file perl/DivDB.pm to set the user and password for this schema
 
The main scripts you will need to use are:
 * load_dual_cl2
 * load_relays_cl2
 * load_divisionals_cl2
 * gen_html
 
 The first three scripts pretty much do what they say. They parse a 'CL2' file exported from MeetManager:
    File > Export > Entry Fees for Business Manager (CL2)   
    If you export into a .zip file, you will need to unpack the .cl2 contained in it.
    
 The last script also pretty much does what it says, it updates the content of the html folder with 
   the results of all uploaded CL2 data.
