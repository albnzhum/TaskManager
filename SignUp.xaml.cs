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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace TaskManager
{
    /// <summary>
    /// Логика взаимодействия для SignUp.xaml
    /// </summary>
    public partial class SignUp : Window
    {

        public SignUp()
        {
            InitializeComponent();
        }

        private void pbPassword_PasswordChanged(object sender, RoutedEventArgs e)
        {
            if (pbPassword.Password.Length == 0)
            {
                tblPasswordHint.Visibility = Visibility.Visible;
            }
            else
            {
                tblPasswordHint.Visibility = Visibility.Hidden;
            }
        }

        private void SignUpButton_Click(object sender, RoutedEventArgs e)
        {
            if (LoginSignUp.Text != null || pbPassword.Password.Length != 0)
            {
                ConnectToDb database = new ConnectToDb();
                database.SignUpUser(LoginSignUp.Text, pbPassword.Password);
            }
        }

        private void SignInButton_Click(object sender, RoutedEventArgs e)
        {
            SignIn signIn = new SignIn();
            frame.Content = signIn.Content;
        }

    }
}
