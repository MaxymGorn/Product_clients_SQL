create view Report as
select  
st.Name as N'Style name',
per.Name as N'Performer name',
md.Name as N'Disc name',
md.DateBegin as N'Date begin',
aut.Name as N'Autors name'
from Musicdisc md inner join Style st on md.StyleId=st.Id
inner join Performer per on md.PerformerId=per.Id
inner join Autors aut on md.AutorsId=aut.Id
