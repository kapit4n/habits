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
        var id = Int32.Parse(Request.QueryString["Id"]);
        if (id == 0)
        {
            Response.Redirect("Default.aspx");
        }


        if (IsPostBack) return;
        List<HabitLog> habitLogsAux = Context1.HabitLogs.Where(p => p.HabitId == id).OrderByDescending(h => h.DoneDate).ToList<HabitLog>();
        HabitLogs = habitLogsAux.ToList();


        Habits = Context1.Habits.ToList<Habit>().Where(p => p.Id == id)
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