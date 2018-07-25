-- Get latest changes
select * from habits hs left join (
select hl.Id, hl.DoneDate, hl.HabitId, hl.ChangeDescription from HabitLog hl
INNER JOIN (select HabitId, MAX(DoneDate) as DDate from HabitLog group by HabitId)  dx 
on dx.HabitId = hl.HabitId and dx.DDate = hl.DoneDate
) hl on hl.HabitId = hs.Id
