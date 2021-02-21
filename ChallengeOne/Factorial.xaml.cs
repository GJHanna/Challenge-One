using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Windows.Threading;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace ChallengeOne
{
    /// <summary>
    /// Interaction logic for Factorial.xaml
    /// </summary>
    public partial class Factorial : Window, INotifyPropertyChanged
    {

        public delegate void ForwardEventHandler(double val);
        /// <summary>
        /// Define delegate event handler
        /// </summary>
        public event ForwardEventHandler OnFactorialForward;

        /// <summary>
        /// Define deproperty changed legate event handler
        /// </summary>
        public event PropertyChangedEventHandler PropertyChanged;

        private double factorialResult_;
        /// <summary>
        /// Holds factorial result
        /// </summary>
        public double FactorialResult
        {
            get { return factorialResult_; }
            set
            {
                factorialResult_ = value;
                FactorialResultTextBox = value.ToString();
                OnPropertyChanged("FactorialResultTextBox");
            }
        }

        private double mode_;
        /// <summary>
        /// Holds the library's getValue value from main
        /// </summary>
        public double Mode {
            get { return mode_; }
            set {
                mode_ = value;
                OnPropertyChanged("Mode");
            }
        }
     

        public Factorial(double mode)
        {
            InitializeComponent();
            DataContext = this;
            try
            {
                Mode = mode;
                FactorialResult = Mathematics.Factorial((int)Mode);
            }
            catch (InvalidCastException ex)
            {
                Console.WriteLine(ex.Message);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }


        /// <summary>
        /// Marks the FactorialResultTextBox's text
        /// </summary>
        public static readonly DependencyProperty FactorialResultTextBoxProperty =
            DependencyProperty.Register("FactorialResultTextBox", typeof(string),
                typeof(MainWindow), new PropertyMetadata() { DefaultValue = "" });

        /// <summary>
        /// Gets or sets the FactorialResultTextBox's text
        /// </summary>
        public string FactorialResultTextBox
        {
            get { return (string)GetValue(FactorialResultTextBoxProperty); }
            set { SetValue(FactorialResultTextBoxProperty, value); }
        }

        /// <summary>
        /// Marks the FactorialValueTextBox's text
        /// </summary>
        public static readonly DependencyProperty FactorialValueTextBoxProperty =
            DependencyProperty.Register("FactorialValueTextBox", typeof(string),
                typeof(MainWindow), new PropertyMetadata() { DefaultValue = "" });

        /// <summary>
        /// Gets or sets the FactorialValueTextBox's text
        /// </summary>
        public string FactorialValueTextBox
        {
            get { return (string)GetValue(FactorialValueTextBoxProperty); }
            set { SetValue(FactorialValueTextBoxProperty, value); }
        }

        /// <summary>
        /// Checks wether the inputed text is numeric and then calculate the inputed number factorial
        /// </summary>
        private void calculateBtn_Click(object sender, RoutedEventArgs e)
        {
            Console.WriteLine(Mode);
            int n;
            bool isNumeric = int.TryParse(FactorialValueTextBox, out n);
            if (isNumeric)
                FactorialResult = Mathematics.Factorial(n);
        }

        /// <summary>
        /// Invoke delegate and sends back the factorial result back to main window then closes
        /// </summary>
        private void saveBtn_Click(object sender, RoutedEventArgs e)
        {
            if (FactorialResult != 0)
            {
                OnFactorialForward?.Invoke(FactorialResult);
                this.Close();
            }
        }

        /// <summary>
        /// Invoke property change delegate
        /// </summary>
        protected void OnPropertyChanged([CallerMemberName] string name = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }
    }
}
