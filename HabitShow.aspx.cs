using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HabitShow : System.Web.UI.Page
{
  HabitModelContext context;
  protected Habit habit = new Habit();
  protected void Page_Load(object sender, EventArgs e)
  {
    context = new HabitModelContext();
    string Id = Request.QueryString["Id"];
    habit = context.Habits.Where(p => p.Id.ToString() == Id).First();
  }

  protected void editHabit_Click(object sender, EventArgs e)
  {
    Server.Transfer("HabitEdit.aspx?Id=" + Request.QueryString["Id"], true);
  }
}
