<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TimelineToday.aspx.cs" Inherits="TimelineToday" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <% for (var index = 0; index < Habits.Count; index++) {
      var id = Habits[index].Id.ToString();
  %>
  <div class="timeline">
	  <div class="column">
		  <div class="title">
			  <h1> <% Response.Write(Habits[index].DoneDate); %> </h1>
			  <h2 style="position: relative; top: 16px;"> <% Response.Write(Habits[index].Name); %> </h2>
		  </div>
		  <div class="description">
			  <p> <% Response.Write(Habits[index].Description); %> </p>
		  </div>
	  </div>
  </div>
  <%
    }
  %>
</asp:Content>
