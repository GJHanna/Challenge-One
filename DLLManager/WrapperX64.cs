using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;

namespace DLLManager
{
    class WrapperX64
    {
        #region P/Invoke

        public const string DLLPATH = "CodingChallenge-x64.dll";

        [DllImport(DLLPATH, EntryPoint = "getMode1", CallingConvention = CallingConvention.StdCall)]
        [return: MarshalAs(UnmanagedType.I1)]
        public static extern bool getMode1();

        [DllImport(DLLPATH, EntryPoint = "getMode2", CallingConvention = CallingConvention.StdCall)]
        [return: MarshalAs(UnmanagedType.I1)]
        public static extern bool getMode2();

        [DllImport(DLLPATH, EntryPoint = "getMode3", CallingConvention = CallingConvention.StdCall)]
        [return: MarshalAs(UnmanagedType.I1)]
        public static extern bool getMode3();

        [DllImport(DLLPATH, EntryPoint = "getValue", CallingConvention = CallingConvention.StdCall)]
        [return: MarshalAs(UnmanagedType.R8)]
        public static extern double getValue(int mode, double x);

        #endregion
    }
}
