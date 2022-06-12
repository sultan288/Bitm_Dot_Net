
select UserName, DateOfBirth, 
Student_Registraion.ReligionId,
Conf_Religion.ReligionName,
CONVERT(varchar(16), DateOfBirth, 101) as BDate

from Student_Registraion inner join
Conf_Religion on Student_Registraion.ReligionId = Conf_Religion.ReligionId