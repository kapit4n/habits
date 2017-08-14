<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HabitShow.aspx.cs" Inherits="HabitShow" MasterPageFile="~/Site.Master"  %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <h2><% Response.Write(Habit1.Name); %></h2>
  <dl class="dl-vertical">
    <dd><% Response.Write(Habit1.getHabitTimeStr()); %></dd>
    <dd><img src="<% Response.Write(Habit1.Image); %>" width="200"/></dd>
    <dd><% Response.Write(Habit1.Description); %></dd>
  </dl>
  <asp:Button id="editHabit" CssClass="btn btn-default" runat="server" Text="Edit" OnClick="EditHabit_Click"/>
  <div class="doted-border">
    <% for (var index = 0; index < _habitLogs.Count; index++)
       {
    %>
      <div class="direct-chat-text"> <span class="badge"> Change: <% Response.Write(_habitLogs[index].ChangeDescription); %> </span> <span class="badge">Modified At <% Response.Write(_habitLogs[index].DoneDate); %></span></div>
    <% }%>
    
  </div>
</asp:Content>
