﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SetDescription : System.Web.UI.Page
{
    protected MSSQLLocalDBEntities _context;
    protected Habit Habit1 { get; set; } = new Habit();
    private string _id;
    protected List<HabitLog> _habitLogs;

    protected void Page_Load(object sender, EventArgs e)
    {
        _context = new MSSQLLocalDBEntities();
        _id = Request.QueryString["Id"];
        if (_id == null)
        {
            Response.Redirect("Default.aspx");
        }
        Habit1 = _context.Habits.First(p => p.Id.ToString() == _id);
        _habitLogs = _context.HabitLogs.Where(p => p.HabitId == Habit1.Id).OrderByDescending(h => h.DoneDate)
            .ToList<HabitLog>();
    }

    protected void SaveDescription_Click(object sender, EventArgs e)
    {
        LogManager.LogBeforeSave(Habit1, LogManager.TypeUpdate.DoneUpdate, LogManager.HabitField.DoneDate,
            (Habit1.DoneDate == null ? DateTime.MinValue : Habit1.DoneDate), logDescription.Text, _context);
        Habit1.Done = true;
        Habit1.DoneDate = DateTime.Now;
        Habit1.HabitLogCount = Habit1.HabitLogCount + 1;
        _context.SaveChanges();
        Response.Redirect("Default.aspx");
    }

    protected void CancelDescription_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx", true);
        Response.Redirect("Default.aspx");
    }
}