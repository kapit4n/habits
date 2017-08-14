using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TimelineToday : System.Web.UI.Page
{
  public MSSQLLocalDBEntities Context1 { get; set; }

  protected List<Habit> Habits { get; set; }

  protected void Page_Load(object sender, EventArgs e)
  {
    Context1 = new MSSQLLocalDBEntities();
    if (IsPostBack) return;
    var nowx = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, 0, 0, 0);
    Habits = Context1.Habits.ToList<Habit>().Where(p => p.DoneDate > nowx && p.Done).OrderByDescending(h => h.DoneDate)
      .ToList();
  }
}