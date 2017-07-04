using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HabitList : System.Web.UI.Page
{
  MSSQLLocalDBEntities context;
  protected List<Habit> habits;

  protected void Page_Load(object sender, EventArgs e)
  {
    context = new MSSQLLocalDBEntities();
    string Id = Request.QueryString["Id"];
    string action= Request.QueryString["action"];
    if (Id != null && Id != "")
    {
      Habit habit = context.Habits.Where(p => p.Id.ToString() == Id).First();
      if (action == "done")
      {
        habit.Done = true;
        habit.DoneDate = DateTime.Now;
      }
      else
      {
        habit.Done = false;
      }
      context.SaveChanges();
    }

    if (!IsPostBack)
    {
      habits = context.Habits.ToList<Habit>().OrderBy(h => h.Name).ToList();
    }
  }

  protected void btnRandom_Click(object sender, EventArgs e)
  {
    Response.Redirect("HabitNew.aspx");
  }
}