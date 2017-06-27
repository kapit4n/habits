using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewHabit : System.Web.UI.Page
{
  HabitModelContext habitContext;
  protected void Page_Load(object sender, EventArgs e)
  {
    habitContext = new HabitModelContext();
    
  }

  protected void saveHabit_Click(object sender, EventArgs e)
  {
    Habit hb = new Habit();
    hb.name = habitName.Text;
    hb.description = description.Text;
    habitContext.Habits.Add(hb);
    habitContext.SaveChanges();
  }
}