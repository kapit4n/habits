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
    string Name = Request.QueryString["Id"];
    habit = context.Habits.Where(p => p.Id.ToString() == Name).First();
  }
}
