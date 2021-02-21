using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace ChallengeOne
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    /// 
    public partial class MainWindow : Window
    {

        private int mode_;
        /// <summary>
        /// Holds the library mode
        /// </summary>
        public int Mode
        {
            get { return mode_; }
            set
            {
                mode_ = value;
                FirstGetFunction = "Mode " + value.ToString();
            }
        }

        private double val_;
        /// <summary>
        /// Holds the value returned from the DLL's getValue function
        /// </summary>
        public double Val
        {
            get { return val_; }
            set
            {
                val_ = value;
                TextBoxText = value.ToString();
            }
        }

        public MainWindow()
        {
            InitializeComponent();
            DataContext = this;
            Mode =  CallTaskAsync().Result;
        }

        /// <summary>
        /// Marks if slider is visible or not
        /// </summary>
        public static readonly DependencyProperty IsSliderVisibleProperty =
            DependencyProperty.Register("IsSldierVisible", typeof(Boolean),
                typeof(MainWindow), new PropertyMetadata() { DefaultValue = false });

        /// <summary>
        /// Gets or sets the slider if visible or not
        /// </summary>
        public bool IsSliderVisible
        {
            get { return (bool)GetValue(IsSliderVisibleProperty); }
            set { SetValue(IsSliderVisibleProperty, value); }
        }

        /// <summary>
        /// Marks firstGetFunction's text
        /// </summary>
        public static readonly DependencyProperty FirstGetFunctionPoperty =
            DependencyProperty.Register("FirstGetFunction", typeof(string),
                typeof(MainWindow), new PropertyMetadata() { DefaultValue = "" });

        /// <summary>
        /// Gets or sets the firstGetFunction's text
        /// </summary>
        public string FirstGetFunction
        {
            get { return (string)GetValue(FirstGetFunctionPoperty); }
            set { SetValue(FirstGetFunctionPoperty, value); }
        }

        /// <summary>
        /// Marks the TextBox's text
        /// </summary>
        public static readonly DependencyProperty TextBoxTextProperty =
            DependencyProperty.Register("TextBoxText", typeof(string),
                typeof(MainWindow), new PropertyMetadata() { DefaultValue = "" });

        /// <summary>
        /// Gets or sets the TextBox's text
        /// </summary>
        public string TextBoxText
        {
            get { return (string)GetValue(TextBoxTextProperty); }
            set { SetValue(TextBoxTextProperty, value); }
        }

        /// <summary>
        /// Detects the library mode
        /// </summary>
        private void modeButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (DLLManager.Manager.getMode1())
                    Mode = 1;
                else if (DLLManager.Manager.getMode2())
                    Mode = 2;
                else if (DLLManager.Manager.getMode3())
                    Mode = 3;
                else
                    Mode = 0;
                IsSliderVisible = true;
            }
            catch (DllNotFoundException dllE)
            {
                Console.WriteLine(dllE.Message);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        /// <summary>
        /// Calls getValue function from DLL when slider value is changed
        /// </summary>
        private void controlSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            try
            {
                if (Mode != 0)
                    Val = DLLManager.Manager.getValue(Mode, (double)controlSlider.Value);
            }
            catch (InvalidCastException ex)
            {
                Console.WriteLine(ex.Message);
            }
            catch (DllNotFoundException dllE)
            {
                Console.WriteLine(dllE.Message);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        /// <summary>
        /// Opens a new Factorial dialog and sends Val to the newly opened dialog 
        /// </summary>
        private void factorial_Click(object sender, RoutedEventArgs e)
        {
            if (Val >= 0)
            {
                Factorial FactorialWindow = new Factorial(Val);
                FactorialWindow.OnFactorialForward += FactorialWindow_OnFactorialForward;
                FactorialWindow.ShowDialog();
            }
        }

        /// <summary>
        /// Sets TextBoxText to the value aquired from Factorial dialog after the 
        /// delegate have been invoke
        /// </summary>
        private void FactorialWindow_OnFactorialForward(double val)
        {
            Val = val;
        }


        /// <summary>
        /// Calls getmode1, getmode2, and getmode3 asynchronously. 
        /// Returns the value of the first functions that inished task first
        /// </summary>
        public static async Task<int> CallTaskAsync()
        {
            try
            {
                return await Task<int>.WhenAny(
                    Task.Run(() => { if (DLLManager.Manager.getMode1()) return 1; return 0; }),
                    Task.Run(() => { if (DLLManager.Manager.getMode2()) return 2; return 0; }),
                    Task.Run(() => { if (DLLManager.Manager.getMode2()) return 3; return 0; })).Result;
            }
            catch (AggregateException ex)
            {
                Console.WriteLine(ex.Message);
                return 0;
            }
        }
    }
}
