using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HabitEdit : System.Web.UI.Page
{
  HabitModelContext context;
  Habit habit = new Habit();

  protected void Page_Load(object sender, EventArgs e)
  {
    context = new HabitModelContext();
    string Id = Request.QueryString["Id"];
    habit = context.Habits.Where(p => p.Id.ToString() == Id).First();
    habitName.Text = habit.name;
    habitImage.Text = habit.image;
    description.Text = habit.description;
  }

  protected void saveHabit_Click(object sender, EventArgs e)
  {
    habit.name = habitName.Text;
    habit.image = habitImage.Text;
    habit.description = description.Text;
    context.Habits.Add(habit);
    context.SaveChanges(); Server.Transfer("HabitShow.aspx?Id=" + habit.Id, true);
  }

  protected void cancelHabit_Click(object sender, EventArgs e)
  {
    
    Server.Transfer("Default.aspx", true);
  }
}