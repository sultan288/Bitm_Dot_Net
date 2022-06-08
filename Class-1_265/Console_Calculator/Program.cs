using System;

namespace Console_Calculator
{
    class Program
    {
        static void add()
        {
            Console.WriteLine("Enter first number: ");
            int num1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter second number: ");
            int num2 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("The result is: " + (num1 + num2));
        }
        static void sub()
        {
            Console.WriteLine("Enter first number: ");
            int num1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter second number: ");
            int num2 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("The result is: " + (num1 - num2));
        }
        static void mul()
        {
            Console.WriteLine("Enter first number: ");
            int num1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter second number: ");
            int num2 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("The result is: " + (num1 * num2));
        }
        static void div()
        {
            Console.WriteLine("Enter first number: ");
            int num1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter second number: ");
            int num2 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("The result is: " + (num1 / num2));
        }
        static void mod()
        {
            Console.WriteLine("Enter first number: ");
            int num1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter second number: ");
            int num2 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("The result is: " + (num1 % num2));
        }

        static void Main(string[] args)
        {
            Console.WriteLine("Welcome to Console Calculator!!! \n Which calculation do you want. \n Select a number from the below list: \n 1. Addition \n 2. Subtraction \n 3. Multiplication \n 4. Division \n 5. Modulus ");
            //Console.WriteLine("Enter your choice: ");
            //int choice = Convert.ToInt32(Console.ReadLine());

            //Console.WriteLine("Enter your choice: ");
            int choice = Convert.ToInt32(Console.ReadLine());
            switch (choice)
            {
                case 1:
                    add();
                    break;
                case 2:
                    sub();
                    break;
                case 3:
                    mul();
                    break;
                case 4:
                    div();
                    break;
                case 5:
                    mod();
                    break;
                default:
                    Console.WriteLine("You have entered an invalid number");
                    break;
            }
        }
    }
}
