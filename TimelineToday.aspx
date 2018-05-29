<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TimelineToday.aspx.cs" Inherits="TimelineToday" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <% for
       (var index = 0; index < HabitsAndLogs.Count; index++)
     {
       var id = HabitsAndLogs[index].HabitId.ToString();
  %>
    <div class="timeline">
      <div class="column">
        <div class="title">
          <h1> <% Response.Write(HabitsAndLogs[index].DoneDate); %> </h1>
          <h2 style="position: relative; top: 16px;"> <% Response.Write(HabitsAndLogs[index].Name); %> </h2>
        </div>
        <div class="description">
          <p style="padding-top: 10px;"><img style="display: inline-block; float: left; padding-right: 10px;" src="<% Response.Write(HabitsAndLogs[index].ImgUrl); %>" width="100"/> <% Response.Write(HabitsAndLogs[index].HabitLogDescription); %> </p>
        </div>
      </div>
    </div>
  <%
     }
  %>
</asp:Content>