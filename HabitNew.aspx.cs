using System;
using System.Web.UI;

public partial class HabitNew : System.Web.UI.Page
{
  private MSSQLLocalDBEntities _context1;
  protected void Page_Load(object sender, EventArgs e)
  {
    _context1 = new MSSQLLocalDBEntities();
    if (!Page.IsPostBack)
    {
      this.DataBind();
    }
  }

  protected void saveHabit_Click(object sender, EventArgs e)
  {
    var newHabit = new Habit
    {
      Name = habitName.Text,
      Image = habitImage.Text,
      Description = description.Text,
      HabitTime = (int.Parse(habitTime.Text.Split(':')[0])) * 60 + (int.Parse(habitTime.Text.Split(':')[1]))
    };
    _context1.Habits.Add(newHabit);
    _context1.SaveChanges();
    Response.Redirect("HabitShow.aspx?Id=" + newHabit.Id);
  }

  protected void cancelHabit_Click(object sender, EventArgs e)
  {
    Server.Transfer("Default.aspx", true);
    Response.Redirect("Default.aspx");
  }
}