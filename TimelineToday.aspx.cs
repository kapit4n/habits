using System;
using System.Collections.Generic;
using System.Linq;

public partial class TimelineToday : System.Web.UI.Page
{
  public MSSQLLocalDBEntities Context1 { get; set; }

  protected List<Habit> Habits { get; set; }

  protected List<HabitLog> HabitLogs { get; set; }

  protected List<HabitAndDescrition> HabitsAndLogs { get; set; }

  protected void Page_Load(object sender, EventArgs e)
  {
    Context1 = new MSSQLLocalDBEntities();
    if (IsPostBack) return;
    var habitLogsAux = from habiLog in Context1.HabitLogs
      group habiLog by habiLog.HabitId
      into g
      select g.FirstOrDefault(res => res.DoneDate == g.Max(sub => sub.DoneDate));
    HabitLogs = habitLogsAux.ToList();


    var nowx = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, 0, 0, 0);
    Habits = Context1.Habits.ToList<Habit>().Where(p => p.DoneDate > nowx && p.Done)
      .OrderByDescending(h => h.DoneDate)
      .ToList();

    var habitAndDescritionsAux = from habit in Habits
      join habitLog in HabitLogs on habit.Id equals habitLog.HabitId
      select new HabitAndDescrition
      {
        HabitId = habit.Id,
        HabitLogDescription = habitLog.ChangeDescription,
        Name = habit.Name,
        DoneDate = habitLog.DoneDate,
        ImgUrl = habit.Image
      };
    HabitsAndLogs = habitAndDescritionsAux.ToList();
  }

  protected class HabitAndDescrition
  {
    public int HabitId { get; set; }
    public string HabitLogDescription { get; set; }

    public DateTime? DoneDate { get; set; }

    public string Name { get; set; }

    public string ImgUrl { get; set; }
  }
}