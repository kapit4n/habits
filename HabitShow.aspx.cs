using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HabitShow : System.Web.UI.Page
{
  MSSQLLocalDBEntities context;
  protected Habit habit = new Habit();
  protected void Page_Load(object sender, EventArgs e)
  {
    context = new MSSQLLocalDBEntities();
    string Id = Request.QueryString["Id"];
    if (Id == null)
    {
      Response.Redirect("Default.aspx");
    }
    habit = context.Habits.Where(p => p.Id.ToString() == Id).First();
  }

  protected void editHabit_Click(object sender, EventArgs e)
  {
    // Server.Transfer("HabitEdit.aspx?Id=" + Request.QueryString["Id"], true);
    Response.Redirect("HabitEdit.aspx?Id=" + Request.QueryString["Id"]);
  }
}
