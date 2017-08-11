create trigger updateLog on habits after insert, update
as
	begin
		print "I Should write in the log to show in the habit events diagram"
	end
GO
