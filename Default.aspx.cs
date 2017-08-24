using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    private MSSQLLocalDBEntities _context;
    private List<Habit> _habits;

    protected List<Habit> DoneHabits { get; set; }

    protected List<Habit> GetHabits()
    {
        return _habits;
    }

    protected void SetHabits(List<Habit> value)
    {
        _habits = value;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        _context = new MSSQLLocalDBEntities();
        if (IsPostBack) return;

        var nowx = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, 0, 0, 0);
        SetHabits(_context.Habits.ToList<Habit>().Where(p => p.DoneDate < nowx || !p.Done).OrderBy(h => h.HabitTime)
            .ToList());
        DoneHabits = _context.Habits.ToList<Habit>().Where(p => p.DoneDate > nowx && p.Done)
            .OrderByDescending(h => h.DoneDate).ToList();
    }

    protected void btnRandom_Click(object sender, EventArgs e)
    {
        Response.Redirect("HabitNew.aspx");
    }
}