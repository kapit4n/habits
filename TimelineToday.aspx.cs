using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TimelineToday : System.Web.UI.Page
{
  MSSQLLocalDBEntities context;
  protected List<Habit> habits;
  protected void Page_Load(object sender, EventArgs e)
  {
    context = new MSSQLLocalDBEntities();
    if (!IsPostBack)
    {
      DateTime nowx = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, 0, 0, 0);
      habits = context.Habits.ToList<Habit>().Where(p => p.DoneDate > nowx && p.Done).OrderByDescending(h => h.DoneDate).ToList();
    }
  }
}