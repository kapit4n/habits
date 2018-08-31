using System;
using System.Collections.Generic;
using System.Linq;

public partial class HabitShow : System.Web.UI.Page
{
    protected MSSQLLocalDBEntities _context;
    protected Habit Habit1 { get; set; } = new Habit();
    protected List<HabitLog> _habitLogs;

    protected void Page_Load(object sender, EventArgs e)
    {
        _context = new MSSQLLocalDBEntities();
        var id = Request.QueryString["Id"];
        if (id == null)
        {
            Response.Redirect("Default.aspx");
        }
        Habit1 = _context.Habits.First(p => p.Id.ToString() == id);
        _habitLogs = _context.HabitLogs.Where(p => p.HabitId == Habit1.Id).OrderByDescending(h => h.DoneDate)
            .ToList<HabitLog>();
    }

    protected void EditHabit_Click(object sender, EventArgs e)
    {
        Response.Redirect("HabitEdit.aspx?Id=" + Request.QueryString["Id"]);
    }
}