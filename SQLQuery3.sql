insert Autors(Name, Surname)
values (N'Name-1',N'Surname-1'),
(N'Name-2',N'Surname-2'),
(N'Name-3',N'Surname-3'),
(N'Name-4',N'Surname-4')

insert Style(Name)
values (N'Style-1'),(N'Style-2'),(N'Style-3'),(N'Style-4')

insert Countries(Name)
values (N'Ukraine'), (N'USA'),(N'Canada')

insert Performer (Name, CountryId)
values (N'Perf-1',1), (N'Perf-3',2),(N'Perf-2',3)

insert Musicdisc(Name , AutorsId ,DateBegin ,PerformerId,StyleId)
values (N'Disc-1',2,'2015-10-16 00:00:00',4,1),
(N'Disc-2',1,'2014-11-03 00:00:00',6,1),
(N'Disc-3',3,'2010-01-07 00:00:00',5,3)

insert Sounds(Name, MusicdiscId ,Time)
values (N'Sound-1',8,'01:01:56'),
(N'Sound-1',8,'03:01:16'),
(N'Sound-2',9,'02:01:26'),
(N'Sound-3',10,'01:10:36'),
(N'Sound-4',8,'00:02:56')