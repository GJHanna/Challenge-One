using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChallengeOne
{
    static class Mathematics
    {
        public static double Factorial(int num)
        {
            if (num == 1 || num == 0)
                return 1;
            else
                return num * Factorial(num - 1);
        }
    }
}
