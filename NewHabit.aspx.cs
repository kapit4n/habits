using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewHabit : System.Web.UI.Page
{
  HabitModelContext context;
  protected Habit newHabit = new Habit();
  protected void Page_Load(object sender, EventArgs e)
  {
    context = new HabitModelContext();
  }

  protected void saveHabit_Click(object sender, EventArgs e)
  {
    context.Habits.Add(newHabit);
    context.SaveChanges();
  }

  protected void cancelHabit_Click(object sender, EventArgs e)
  {

  }
}