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

namespace TaskManager
{
    /// <summary>
    /// Логика взаимодействия для AddTask.xaml
    /// </summary>
    public partial class AddTask : Window
    {
        public delegate void TaskIntercetion(UserTask task);
        public event TaskIntercetion AddTaskAction;

        public UserTask NewTask { get; private set; }


        public AddTask()
        {
            InitializeComponent();
        }

        public void closeButton_Click(object sender, RoutedEventArgs e)
        {
            MainPage main = new MainPage();
            main.AddTask_Closed(sender, e);
            this.Close();
            
        }

        private void descriptionTask_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        public void addItemButton_Click(object sender, RoutedEventArgs e)
        {
            MainPage mainPage = new MainPage();
            try
            {
                UserTask newTask = new UserTask(descriptionTask.Text, datePicker.SelectedDate.Value, false);
                NewTask = newTask;
                MainPage._tasksList.Add((descriptionTask.Text, datePicker.SelectedDate.Value, false));
                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            mainPage.AddTask_Closed(sender, e);
            this.Close();

        }
    }
}
