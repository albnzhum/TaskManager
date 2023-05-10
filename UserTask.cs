using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Lifetime;
using System.Text;
using System.Threading.Tasks;

namespace TaskManager
{
    public class UserTask
    {
        public string description { get; set; }
        public DateTime date { get; set; }
        public bool isChecked { get; set; }


        public string Description
        {
            get { return description; }
            set
            {
                if (value != null) description = value;
                else description = null;
            }
        }

        public DateTime Date
        {
            get { return date; }
            set
            {
                if (value != null) date = value;
                else date = DateTime.Now;
            }
        }

        public bool IsChecked
        {
            get { return isChecked; }
            set
            {
                isChecked = value;
            }
        }

        public UserTask(string description, DateTime date, bool isChecked)
        {
            Description = description;
            Date = date;
            IsChecked = isChecked;
        }
    }
}
