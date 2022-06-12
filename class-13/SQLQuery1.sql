select
UserName,
(FirstName+ ' '+ ISNULL(MiddleName,'')+''+ LastName) as FullName,
Student_Registraion.ReligionId, ReligionName

from [dbo].[Student_Registraion] INNER JOIN
Conf_Religion ON Student_Registraion.ReligionId = Conf_Religion.ReligionId