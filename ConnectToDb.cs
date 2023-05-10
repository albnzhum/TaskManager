using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace TaskManager
{
    internal class ConnectToDb
    {
        private static string connectionString = "Server=localhost;Database=TaskManager;Trusted_Connection=True;";
        private static SqlConnection connection;
        private static SqlCommand command;

        private static void OpenConnection()
        {
            connection = new SqlConnection(connectionString);
            try
            {
                if (connection.State == ConnectionState.Closed)
                {
                    connection = new SqlConnection(connectionString);
                    connection.Open();
                }
                // Открываем подключение
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        private static void CloseConnection()
        {
            connection = new SqlConnection(connectionString);
            if (connection.State == ConnectionState.Open)
            {
                // закрываем подключение
                connection.Close();
                Console.WriteLine("Подключение закрыто...");
            }
        }

        public static void ExecuteQueryWithoutAnswer(string query)
        {
            OpenConnection();
            command = new SqlCommand(query);
            command.CommandText = query;
            command.Connection = connection;
            command.ExecuteNonQuery();
            CloseConnection();

        }

        public static string ExecuteQueryWithAnswer(string query)
        {
            OpenConnection();
            command.CommandText = query;
            var answer = command.ExecuteScalar();
            CloseConnection();

            if (answer != null) return answer.ToString();
            else return null;
        }

        public static DataTable GetTable(string query)
        {
            OpenConnection();
            SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            adapter.Dispose();
            CloseConnection();
            return ds.Tables[0];
        }

        public void SignUpUser(string login, string pass)
        {

            var _login = login;
            var _pass = md5.hashPassword(pass);

            if (login != null)
            {
                string query = $"INSERT INTO Users(Username, Hash_Password, External_Type) VALUES('{_login}', '{_pass}', 'desktop')";
                ExecuteQueryWithoutAnswer(query);
            }
        }

        public void SignUpGoogle(string sub)
        {
            string query = $"INSERT INTO Users(External_Type, External_Id) VALUES ('Google', '{sub}')";
            ExecuteQueryWithoutAnswer(query);
        }

        public int CheckAuthorization(string login, string pass)
        {
            DataTable users = GetTable("SELECT * FROM Users");
            var hash_password = md5.hashPassword(pass);
                var id = (from row in users
                        .AsEnumerable()

                          where row.Field<string>("Username") == login
                          where row.Field<string>("Hash_Password") == hash_password
                          select row.Field<int>("Id")).First<int>();
                return id;
        }

        public void CheckGoogleAuthorization(string sub, Frame frame)
        {
            DataTable users = GetTable("SELECT * FROM Users");

            try
            {
                var id = (from row in users
                          .AsEnumerable()
                          where row.Field<string>("External_ID") == sub
                          select row.Field<int>("Id")).First<int>();
            }
            catch
            {
                SignUpGoogle(sub);
            }
            finally
            {
                MainPage mainPage = new MainPage();
                frame.Content = mainPage;
            }
        }
    }
}
