create database mydb2;
use mydb2;
select Light,Weather,Injury_Severity,Traffic_Control,
avg(Speed_Limit) as average_speed_limit,
min(Speed_Limit) as min_speed_limit,
max(Speed_Limit) as max_speed_limit
from cleaned_data
group by Light,Weather,Injury_Severity,Traffic_Control;

select count(*) from cleaned_data;


Select Weather,Injury_Severity,count(*) as No_Of_Accidents
from  cleaned_data Group by Weather, Injury_Severity
order by No_Of_Accidents Desc;


Select Light,Injury_Severity,count(*) as No_Of_Accidents
from  cleaned_data Group by Light, Injury_Severity 
order by No_Of_Accidents Desc;


Select Speed_Limit,Injury_Severity,count(*) as No_Of_Accidents
from  cleaned_data Group by Speed_Limit, Injury_Severity
order by No_Of_Accidents Desc;

Select Driver_Substance_Abuse,count(*) as No_Of_Accidents 
from cleaned_data group by Driver_Substance_Abuse 
order by No_of_Accidents desc;

Select Driver_At_Fault,count(*) as No_Of_Accidents 
from cleaned_data group by Driver_At_Fault 
order by No_of_Accidents desc;




Select avg(Speed_Limit) as average_speed,
min(Speed_Limit) as minimum_speed,
max(Speed_Limit) as maximum_speed
from cleaned_data;




Select Equipment_Problems,count(*) as No_Of_Accidents 
from cleaned_data group by Equipment_Problems 
order by No_of_Accidents desc;


    
    
    
    
    
    

