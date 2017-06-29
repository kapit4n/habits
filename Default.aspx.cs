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
    habits =  context.Habits.ToList<Habit>();
  }

  protected void btnRandom_Click(object sender, EventArgs e)
  {
    Response.Redirect("HabitNew.aspx");
  }
}