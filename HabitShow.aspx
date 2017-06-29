<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HabitShow.aspx.cs" Inherits="HabitShow" MasterPageFile="~/Site.Master"  %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <h2><% Response.Write(habit.Name); %></h2>
  <dl class="dl-vertical">
    <dd><img src="<% Response.Write(habit.Image); %>" width="200"/></dd>
    <dd><% Response.Write(habit.Description); %></dd>
  </dl>
  <asp:Button id="editHabit" CssClass="btn btn-default" runat="server" Text="Edit" OnClick="editHabit_Click"/>
</asp:Content>
