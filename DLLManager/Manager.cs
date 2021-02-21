using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DLLManager
{
    public class Manager
    {
        // try/catch blocks
        // add descriptions

        /// <summary>
        /// Returns wether the operating system is 64-bit
        /// </summary>
        static readonly bool Is64 = IntPtr.Size == 8;

        /// <summary>
        /// Returns true if the library is in mode 1
        /// </summary>
        public static bool getMode1()
        {
            return Is64 ? WrapperX64.getMode1() : WrapperX86.getMode1();
        }

        /// <summary>
        /// Returns true if the library is in mode 2
        /// </summary>
        public static bool getMode2()
        {
            return Is64 ? WrapperX64.getMode2() : WrapperX86.getMode2();
        }

        /// <summary>
        /// Returns true if the library is in mode 3
        /// </summary>
        public static bool getMode3()
        {
            return Is64 ? WrapperX64.getMode3() : WrapperX86.getMode3();
        }

        /// <summary>
        /// Transforms x and returns a value based on the given mode
        /// </summary>.
        public static double getValue(int mode, double x)
        {
            return Is64 ? WrapperX64.getValue(mode, x) : WrapperX86.getValue(mode, x);
        }

    }
}
