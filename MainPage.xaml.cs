using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
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
using System.IO;

namespace TaskManager
{
    /// <summary>
    /// Логика взаимодействия для MainPage.xaml
    /// </summary>
    public partial class MainPage : Page
    {
        public static List<(string description, DateTime date, bool isChecked)> _tasksList = new List<(string description, DateTime date, bool isChecked)>();
        public static bool isWindowOpen;
        string fileName = $"user_{SignIn.id}";
        public MainPage()
        {
            InitializeComponent();
            //mainList.ItemsSource = tasks;
            mainList.Items.Clear();
            if (File.Exists(fileName))
            {
                string json = File.ReadAllText(fileName);
                _tasksList = JsonConvert.DeserializeObject<List<(string, DateTime, bool)>>(json);

                foreach (var task in _tasksList)
                {
                    AddItems(task.description, task.date, task.isChecked);
                }
            }

        }

        private void addButton_Click(object sender, RoutedEventArgs e)
        {
            AddTask addTask = new AddTask();
            addTask.Closed += AddTask_Closed;
            addTask.ShowDialog();
            UserTask newTask = addTask.NewTask;


            if (newTask != null)
            {
                AddItems(newTask.Description, newTask.Date, newTask.IsChecked);
            }
        }

        private void AddItems(string description, DateTime date, bool isChecked)
        {
            CheckBox checkBox = new CheckBox();
            ListBoxItem item = new ListBoxItem();
            item.Content = new StackPanel() { Orientation = Orientation.Horizontal };
            checkBox.Content = description;
            checkBox.Style = this.Resources["CheckBoxStyle1"] as Style;
            ((StackPanel)item.Content).Children.Add(checkBox);

            // Устанавливаем значение свойства IsChecked CheckBox на основе значения свойства IsChecked объекта UserTask
            checkBox.IsChecked = isChecked;
            mainList.Items.Add(item);
            calendar.SelectedDate = date;
            calendar.DisplayDate = date;
        }

        private void Calendar_SelectedDatesChanged(object sender, SelectionChangedEventArgs e)
        {
            DateTime selectedDate = (DateTime)calendar.SelectedDate;

            // Фильтруем список задач для выбранной даты
            var tasksForDate = _tasksList.Where(task => task.date.Date == selectedDate.Date).ToList();

            mainList.ItemsSource = tasksForDate;

        }


        public void AddTask_Closed(object sender, EventArgs e)
        {
            closeButton.Visibility = Visibility.Hidden;
            closeButton.IsEnabled = false;
        }

        private void closeButton_Click(object sender, RoutedEventArgs e)
        {
            
        }

        private void exitButton_Click(object sender, RoutedEventArgs e)
        {
            SignIn signIn = new SignIn();
            frame.Content = signIn.Content;
        }

        private void saveButton_Click(object sender, RoutedEventArgs e)
        {
            
            string json = JsonConvert.SerializeObject(_tasksList);
            Console.WriteLine(json);
            File.WriteAllText(fileName, json);

        }
    }
}
