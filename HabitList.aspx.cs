using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HabitList : System.Web.UI.Page
{
    public MSSQLLocalDBEntities Context1 { get; private set; }
    protected List<Habit> Habits1 { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        Context1 = new MSSQLLocalDBEntities();
        var id = Request.QueryString["Id"];
        var action = Request.QueryString["action"];
        if (!string.IsNullOrEmpty(id))
        {
            var habit = Context1.Habits.First(p => p.Id.ToString() == id);
            if (action == "done")
            {
                habit.Done = true;
                habit.DoneDate = DateTime.Now;
            }
            else
            {
                habit.Done = false;
            }
            Context1.SaveChanges();
        }

        if (!IsPostBack)
        {
            Habits1 = Context1.Habits.ToList<Habit>().OrderBy(h => h.HabitTime).ToList();
        }
    }

    protected void btnRandom_Click(object sender, EventArgs e)
    {
        Response.Redirect("HabitNew.aspx");
    }
}