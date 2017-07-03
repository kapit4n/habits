﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class Habit
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Image { get; set; }
    public string Description { get; set; }
    public bool Done { get; set; }
    public Nullable<System.DateTime> DoneDate { get; set; }
    public Nullable<int> HabitTime { get; set; }
    public string getHabitTimeStr()
    {
        if (HabitTime == null)
            return "00:00";
        return (((int)(HabitTime / 60)).ToString("00")) + ":" + (((int)(HabitTime % 60)).ToString("00"));
    }
}
