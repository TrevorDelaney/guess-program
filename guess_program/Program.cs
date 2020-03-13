using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace guess_program
{
    class Program
    {
        static void Main(string[] args)
        {
            const int answer = 42;
            int guess;

            Console.WriteLine("Guess a number between 1 and 100:");

            while (true)
            {
                // Ensure the value is an integer.
                try
                {
                    guess = Convert.ToInt32(Console.ReadLine());
                } catch (FormatException)
                {
                    Console.WriteLine("The value entered must be a number. Try again!");
                    continue;
                }

                // For the guess to be valid, it must be between 1 and 100.
                if (guess < 1 || guess > 100)
                {
                    Console.WriteLine("The number must be between 1 and 100. Try again!");
                    continue;
                }

                if (guess == answer)
                {
                    Console.WriteLine("Congratulations, you win!");
                    Console.WriteLine("Press 'Enter' to continue!");
                    Console.Read();
                    break;
                } else {
                    Console.WriteLine("Incorrect answer. Try again!");
                }
            }
        }
    }
}
