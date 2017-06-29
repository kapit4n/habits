using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HabitNew : System.Web.UI.Page
{
  MSSQLLocalDBEntities context;
  protected void Page_Load(object sender, EventArgs e)
  {
    context = new MSSQLLocalDBEntities();
    if (!Page.IsPostBack)
    {
      this.DataBind();
    }
  }

  protected void saveHabit_Click(object sender, EventArgs e)
  {
    Habit newHabit = new Habit();
    newHabit.Name = habitName.Text;
    newHabit.Image= habitImage.Text;
    newHabit.Description = description.Text;

    context.Habits.Add(newHabit);
    context.SaveChanges();
    Response.Redirect("HabitShow.aspx?Id=" + newHabit.Id);
  }

  protected void cancelHabit_Click(object sender, EventArgs e)
  {
    Server.Transfer("Default.aspx", true);
    Response.Redirect("Default.aspx");
  }
}