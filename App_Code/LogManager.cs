using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LogManager
/// </summary>
public class LogManager
{
  public class TypeUpdate
  {
    private TypeUpdate(string value) { Value = value; }

    public string Value { get; set; }

    public static TypeUpdate Insertion => new TypeUpdate("Insertion");
    public static TypeUpdate ChangeStatus => new TypeUpdate("Change Status");
    public static TypeUpdate DoneUpdate => new TypeUpdate("Done");
    public static TypeUpdate Delete => new TypeUpdate("Done");
  }

  public enum HabitField
  {
    Name,
    DoneDate,
    NewRecord,
    DeleteRecord
  }

  public LogManager()
  {

  }

  public static void LogBeforeSave(Habit habit, TypeUpdate typeUpdate, HabitField field, object newValue, MSSQLLocalDBEntities context)
  {
    var habitLog = new HabitLog
    {
      ChangeDescription = "Habit " + typeUpdate.Value,
      DoneDate = DateTime.Now,
      HabitId = habit.Id
    };
    switch (field)
    {
      case HabitField.Name:
        habitLog.OldValue = habit.Name;
        break;
      case HabitField.DoneDate:
        habitLog.OldValue = habit.DoneDate.ToString();
        break;
      case HabitField.NewRecord:
        break;
      case HabitField.DeleteRecord:
        break;
      default:
        habitLog.OldValue = "";
        break;
    }
    habitLog.NewValue = newValue.ToString();
    context.HabitLogs.Add(habitLog);
    context.SaveChanges();
  }
}