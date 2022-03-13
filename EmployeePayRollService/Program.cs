using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeePayRollService
{
    public class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(" Welcome to Payroll Service program using MSSQL & ADO.NET \n");
            EmployeeOperations eops = new EmployeeOperations();
            eops.GetEmployeeDetails();
        }
    }
}
