create procedure spGetAllEmployee
As 
Begin try
select * from employee_payroll
end try
Begin catch
SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH 

exec spGetAllEmployee

Create procedure spAddEmployeePayroll
(@Name varchar(250), @Salary int, @StartDate date)
As 
Begin try
insert into employee_payroll(Name,Salary,StartDate)values(@Name,@Salary,@StartDate)
end try
Begin catch
SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH 


Create procedure spAddEmployeePayroll
(
@EmpName varchar(20),
@Gender varchar(6),
@Phone varchar(16),
@EmpAddress varchar(24),
@StartDate varchar(20),
@Department varchar(16),
@BasicPay float,
@Deductions float,
@IncomeTax float,
@NetPay float
)
as
begin try
Insert into employee_payroll values(@EmpName,@Gender,@Phone,@EmpAddress,@StartDate,@Department,@BasicPay,@Deductions,@IncomeTax,@NetPay)
End Try
BEGIN CATCH
SELECT
ERROR_NUMBER() AS ErrorNumber,
ERROR_STATE() AS ErrorState,
ERROR_PROCEDURE() AS ErrorProcedure,
ERROR_LINE() AS ErrorLine,
ERROR_MESSAGE() AS ErrorMessage;
END CATCH

exec spGetAllEmployee


Create or alter procedure spUpdateBasicPay
(  
   @EmpName varchar(20),
   @NetPay float
)  
as
begin try
UPDATE employee_payroll set BasicPay=30000,NetPay=@NetPay where EmpName=@EmpName;
End Try
BEGIN CATCH
  SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH

exec spGetAllEmployee


alter procedure spGetRowsByDateRange
(  
   @MinDate varchar(16),
   @MaxDate varchar(16)
)  
as
begin try
SELECT * from EmployeePayrollTable where StartDate between @MinDate and @MaxDate;
End Try
BEGIN CATCH
  SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH

exec spGetAllEmployee

Create or alter procedure spDeleteEmployeeDetails
(  
   @EmpId int  
)  
as
begin try
Delete from EmployeePayrollTable where Id=@EmpId
 End Try
BEGIN CATCH
  SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH

exec spGetAllEmployee


   
Create or alter procedure spGetAllEmployeeDetails
as
begin try
select * from EmployeePayrollTable
End Try
BEGIN CATCH
  SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH

exec spGetAllEmployee
