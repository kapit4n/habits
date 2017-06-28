using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HabitNew : System.Web.UI.Page
{
  HabitModelContext context;
  protected void Page_Load(object sender, EventArgs e)
  {
    context = new HabitModelContext();
    if (!Page.IsPostBack)
    {
      this.DataBind();
    }
  }

  protected void saveHabit_Click(object sender, EventArgs e)
  {
    Habit newHabit = new Habit();
    newHabit.name = habitName.Text;
    newHabit.image= habitImage.Text;
    newHabit.description = description.Text;

    context.Habits.Add(newHabit);
    context.SaveChanges();
    Server.Transfer("HabitShow.aspx?Id=" + newHabit.Id, true);
  }

  protected void cancelHabit_Click(object sender, EventArgs e)
  {
    Server.Transfer("Default.aspx", true);
  }
}