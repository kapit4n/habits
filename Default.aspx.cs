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
      context.SaveChanges();
    }

    if (!IsPostBack)
    {
      habits = context.Habits.ToList<Habit>().Where(p => !p.Done).ToList();
    }
  }

  protected void btnRandom_Click(object sender, EventArgs e)
  {
    Response.Redirect("HabitNew.aspx");
  }
}