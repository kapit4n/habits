using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
  MSSQLLocalDBEntities context;
  protected List<Habit> habits;
  
  protected void Page_Load(object sender, EventArgs e)
  {
    context = new MSSQLLocalDBEntities();
    string Id = Request.QueryString["Id"];
    if (Id != null && Id != "")
    {
      Habit habit = context.Habits.Where(p => p.Id.ToString() == Id).First();
      habit.Done = true;
      habit.DoneDate = DateTime.Now;
      context.SaveChanges();
    }

    if (!IsPostBack)
    {
      DateTime nowx = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, 0, 0, 0);
      habits = context.Habits.ToList<Habit>().Where(p => p.DoneDate < nowx || !p.Done).OrderBy( h => h.HabitTime).ToList();
    }
  }

  protected void btnRandom_Click(object sender, EventArgs e)
  {
    Response.Redirect("HabitNew.aspx");
  }
}