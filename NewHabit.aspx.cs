using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewHabit : System.Web.UI.Page
{
  MSSQLLocalDBEntities1 ss;
  protected void Page_Load(object sender, EventArgs e)
  {
    ss = new MSSQLLocalDBEntities1();
    
  }

  protected void saveHabit_Click(object sender, EventArgs e)
  {
    Habit hb = new Habit();
    hb.name = habitName.Text;
    hb.description = description.Text;
    ss.Habits.Add(hb);
    ss.SaveChanges();
  }
}