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
    Habits = Context1.Habits.ToList<Habit>()
      .OrderByDescending(h => h.DoneDate)
      .ToList();

    var habitAndDescritionsAux = from habit in Habits
      join habitLogX in Context1.HabitLogs on habit.Id equals habitLogX.HabitId
      select new HabitAndDescrition
      {
        HabitId = habit.Id,
        HabitLogDescription = habitLogX.ChangeDescription,
        Name = habit.Name,
        DoneDate = habitLogX.DoneDate,
        ImgUrl = habit.Image
      };
    HabitsAndLogs = habitAndDescritionsAux.OrderByDescending(i => i.DoneDate).ToList();
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