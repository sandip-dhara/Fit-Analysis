<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Max_Score</fullName>
        <description>Update Max Score Possible from fit analysis</description>
        <field>Max_Possible_Score__c</field>
        <formula>3 * VALUE(TEXT(Audit_Compliance_Weight__c)) + 
3 * VALUE(TEXT(Availability_Reliability_Weight__c)) + 
3 * VALUE(TEXT(Business_Process_Weight__c)) + 
3 * VALUE(TEXT(Computation_Weight__c)) + 
3 * VALUE(TEXT(Data_Security_Weight__c)) + 
3 * VALUE(TEXT(Data_Types_Weight__c)) + 
3 * VALUE(TEXT(Data_Volume_Weight__c)) + 
3 * VALUE(TEXT(Integration_Complexity_Weight__c)) + 
3 * VALUE(TEXT(Internationalization_Weight__c)) + 
3 * VALUE(TEXT(Mobile_Offline_Weight__c)) + 
3 * VALUE(TEXT(Reporting_Analytics_Weight__c)) + 
3 * VALUE(TEXT(Search_Weight__c)) + 
3 * VALUE(TEXT(Transaction_Volume_Weight__c)) + 
3 * VALUE(TEXT(User_Interface_Weight__c))</formula>
        <name>Update Max Score</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Overall_Fit_Score</fullName>
        <field>Overall_Score__c</field>
        <formula>Audit_Compliance_Score__c +
 Availabilty_Reliability_Score__c +
 Business_Process_Score__c +
 Computation_Score__c +
 Data_Security_Score__c +
 Data_Types_Score__c +
 Data_Volume_Score__c +
 Integration_Complexity_Score__c +
 Internationalization_Score__c +
 Mobile_Offline_Score__c +
 Reporting_Analytics_Score__c +
 Search_Score__c +
 Transaction_Volume_Score__c +
 User_Interface_Score__c</formula>
        <name>Update Overall Fit Score</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Percent_Fit</fullName>
        <field>Fit_Percentage__c</field>
        <formula>Overall_Score__c / Max_Possible_Score__c</formula>
        <name>Update Percent Fit</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Score Changed</fullName>
        <actions>
            <name>Update_Overall_Fit_Score</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2 OR 3 OR 4 OR 5 OR 6 OR 7 OR 8 OR 9 OR 10 OR 11 OR 12 OR 13 OR 14</booleanFilter>
        <criteriaItems>
            <field>FitAnalysis__c.Audit_Compliance_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Availabilty_Reliability_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Business_Process_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Computation_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Data_Security_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Data_Types_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Data_Volume_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Integration_Complexity_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Internationalization_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Mobile_Offline_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Reporting_Analytics_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Search_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Transaction_Volume_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.User_Interface_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <description>Update Overall Fit Score</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Max Possible Score</fullName>
        <actions>
            <name>Update_Max_Score</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2 OR 3 OR 4 OR 5 OR 6 OR 7 OR 8 OR 9 OR 10 OR 11 OR 12 OR 13 OR 14</booleanFilter>
        <criteriaItems>
            <field>FitAnalysis__c.Audit_Compliance_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Availabilty_Reliability_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Business_Process_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Computation_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Data_Security_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Data_Types_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Data_Volume_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Integration_Complexity_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Internationalization_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Mobile_Offline_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Reporting_Analytics_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Search_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.Transaction_Volume_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>FitAnalysis__c.User_Interface_Score__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <description>Update Maximum Score Possible</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Percent Fit</fullName>
        <actions>
            <name>Update_Percent_Fit</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Calculates the percent fit</description>
        <formula>ISCHANGED(Overall_Score__c ) || ISCHANGED(Max_Possible_Score__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
