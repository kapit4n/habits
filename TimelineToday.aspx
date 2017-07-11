<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TimelineToday.aspx.cs" Inherits="TimelineToday" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <% for (int index = 0; index < habits.Count; index++) {
    string Id = habits[index].Id.ToString();
  %>
  <div class="timeline">
	  <div class="column">
		  <div class="title">
			  <h1> <% Response.Write(habits[index].DoneDate); %> </h1>
			  <h2> <% Response.Write(habits[index].Name); %> </h2>
		  </div>
		  <div class="description">
			  <p> <% Response.Write(habits[index].Description); %> </p>
		  </div>
	  </div>
  </div>
  <%
    }
  %>
</asp:Content>
