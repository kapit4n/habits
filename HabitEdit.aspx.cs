using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HabitEdit : System.Web.UI.Page
{
  MSSQLLocalDBEntities context;
  Habit habit = new Habit();

  protected void Page_Load(object sender, EventArgs e)
  {
    context = new MSSQLLocalDBEntities();
    string Id = Request.QueryString["Id"];
    if (!IsPostBack)
    {
      habit = context.Habits.Where(p => p.Id.ToString() == Id).First();
      habitName.Text = habit.Name;
      habitImage.Text = habit.Image;
      habitTime.Text = habit.getHabitTimeStr();
      description.Text = habit.Description;
    }
  }

  protected void saveHabit_Click(object sender, EventArgs e)
  {
    string Id = Request.QueryString["Id"];
    habit = context.Habits.Where(p => p.Id.ToString() == Id).First();
    habit.Name = habitName.Text;
    habit.HabitTime = (Int32.Parse(habitTime.Text.Split(':')[0])) * 60 + (Int32.Parse(habitTime.Text.Split(':')[1]));
    habit.Image = habitImage.Text;
    habit.Description = description.Text;
    context.SaveChanges();
    Response.Redirect("HabitShow.aspx?Id=" + habit.Id);
  }

  protected void cancelHabit_Click(object sender, EventArgs e)
  {
    Response.Redirect("Default.aspx");
  }
}