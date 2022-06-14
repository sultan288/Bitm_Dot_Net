select UserAuth.UserId,
(User_Registraion.FirstName+' ' + isnull(User_Registraion.MiddleName,'') + User_Registraion.LastName)
as FullName

from UserAuth inner join
User_Registraion on UserAuth.UserId = User_Registraion.UserId

where IsActive = 1 and User_Registraion.UserName = 'admin' and UserPassword = '123'