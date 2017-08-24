using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HabitEdit : System.Web.UI.Page
{
    public MSSQLLocalDBEntities Context1 { get; private set; }
    public Habit Habit1 { get; private set; } = new Habit();

    protected void Page_Load(object sender, EventArgs e)
    {
        Context1 = new MSSQLLocalDBEntities();
        var id = Request.QueryString["Id"];
        if (id == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (IsPostBack) return;
        Habit1 = Context1.Habits.First(p => p.Id.ToString() == id);
        habitName.Text = Habit1.Name;
        habitImage.Text = Habit1.Image;
        habitTime.Text = Habit1.getHabitTimeStr();
        description.Text = Habit1.Description;
    }

    protected void saveHabit_Click(object sender, EventArgs e)
    {
        var Id = Request.QueryString["Id"];
        Habit1 = Context1.Habits.First(p => p.Id.ToString() == Id);
        Habit1.Name = habitName.Text;
        Habit1.HabitTime = (int.Parse(habitTime.Text.Split(':')[0])) * 60 + (int.Parse(habitTime.Text.Split(':')[1]));
        Habit1.Image = habitImage.Text;
        Habit1.Description = description.Text;
        Context1.SaveChanges();
        Response.Redirect("HabitShow.aspx?Id=" + Habit1.Id);
    }

    protected void cancelHabit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}