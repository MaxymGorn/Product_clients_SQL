--1
insert into ReportStyle([Style name])
values (N'New style name')
--2
INSERT INTO ReportSound([Sound name],Time,[Music Id])
VALUES(N'New Sound','00:04:23', 8)
--3
Update Report
Set [Performer name]=N'Bethoven' where [Disc name]=N'Disc-1'
--4
DELETE FROM Report 
WHERE [Autors name]=N'Name-1'
--5
Update Report
Set [Autors name]=N'Name-2' where [Disc name]=N'New name'









--1
select * from ReportAutors
--2
select * from ReportSound
--3
select *from ReportDisc  rd where  rd.[Performer name]=N''