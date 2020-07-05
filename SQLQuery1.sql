
create table Autors(
Id INT NOT NULL  IDENTITY,
Name nvarchar(max) not null,
Surname nvarchar(max) not null,
CONSTRAINT PK_Autors_Id PRIMARY KEY (Id),
CONSTRAINT CK_Autors_Name CHECK(Name !=''),
CONSTRAINT CK_Autors_Surname CHECK(Surname !='')
);

create table Style(
Id INT NOT NULL  IDENTITY,
Name nvarchar(max) not null,
CONSTRAINT PK_Style_Id PRIMARY KEY (Id),
CONSTRAINT CK_Style_Name CHECK(Name !='')
);

create table Countries(
Id INT NOT NULL  IDENTITY,
Name nvarchar(max) not null,
CONSTRAINT PK_Countries_Id PRIMARY KEY (Id),
CONSTRAINT CK_Countries_Name CHECK(Name !='')
);


create table Performer(
Id INT NOT NULL  IDENTITY,
Name nvarchar(max) not null,
CountryId int not null,
CONSTRAINT PK_Performer_Id PRIMARY KEY (Id),
CONSTRAINT CK_Performer_Name CHECK(Name !=''),
constraint FK_Performer_CountryId  foreign key (CountryId) references Countries(Id)
);

create table Musicdisc(
Id INT NOT NULL  IDENTITY,
Name nvarchar(max) not null,
AutorsId int not null,
StyleId int not null,
DateBegin date not null,
PerformerId int not null,
CONSTRAINT PK_Music_Id PRIMARY KEY (Id),
CONSTRAINT CK_Music_Name CHECK(Name !=''),
constraint FK_Music_AutorsId  foreign key (AutorsId) references Autors(Id),
constraint FK_Music_StyleId  foreign key (StyleId) references Style(Id),
constraint FK_Music_PerformerId  foreign key (PerformerId) references Performer(Id)

);

create table Sounds(
Id int not null identity,
Name nvarchar(max) not null,
Time time not null,
MusicdiscId int not null,
CONSTRAINT PK_Sounds_Id PRIMARY KEY (Id),
CONSTRAINT CK_Sounds_Name CHECK(Name !=''),
constraint FK_Sounds_MusicdiscId  foreign key (MusicdiscId) references Musicdisc(Id),
);

