create table boats(
         Id int  primary key not null, 
         boat_destination varchar(45),
         boat_name varchar(45),
         boat_colour varchar(30)
	    );
         
insert into boats(Id,boat_destination,boat_name,boat_colour)
         values(12,"india","titanic","white"),
         (13,"india","titanic","black"),
         (14,"africa","texas","blue");
         
create table sailors(
         sa_Id int primary key not null, 
         boat_destination varchar(45),
		 boat_name varchar(45),
         sailor_name varchar(45),
         no_of_people int,
         Id int ,
         constraint Id foreign key (Id) references boats(Id)
);  
         
insert into sailors(sa_Id,boat_destination,boat_name,sailor_name,no_of_people,Id)
         values(80,"india","titanic","spencer",90,12),
         (81,"india","titanic","bravestone",87,13),
         (82,"africa","texas","christie",67,14);
          
          
         select * from boats left join sailors on sailors.Id = boats.boat_name;
		 select * from boats right join sailors on sailors.Id = boats.Id;
         select * from boats inner join sailors on sailors.Id = boats.Id;
         select * from boats  right outer join sailors on sailors.Id = boats.Id;
         
         
         
	