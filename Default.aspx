﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <div class="jumbotron" style="padding: 0;">
    <div class="container" style="padding: 0;">
      <div class="row" style="background-image: url(https://mymodernmet.com/wp/wp-content/uploads/2018/07/2018-dog-photographer-of-the-year-dog-photos-the-kennel-club-2.jpg)">
        <div class="col-md-6">
          <h1>HABITS </h1><asp:LinkButton ID="btnRandom" runat="server" CssClass="btn btn-primary" OnClick="btnRandom_Click">
            <span aria-hidden="true" class="glyphicon glyphicon-plus"></span>
          </asp:LinkButton>
          <p class="lead">Register all the Habits that you usually do or you wanna develop them.</p>
        </div>
        <div class="col-md-6">
          <ul class="list-group" style="background-color:rgba(0, 0, 0, 0.5);">
            <% for (var index = 0; index < DoneHabits.Count; index++)
               {
            %>
              <li class="list-group-item" style="background: transparent;">
                <a class="btn btn-success" style="min-width: 250px; text-transform: uppercase;" href="HabitShow.aspx?Id=<% Response.Write(DoneHabits[index].Id); %>"><% Response.Write(DoneHabits[index].Name); %><span class="badge"><% Response.Write(DoneHabits[index].HabitLogCount); %></span></a>
                <span class="badge" style="position: relative; top: 17px;">Done At <% Response.Write(DoneHabits[index].getDoneDateStr()); %></span>
              </li>
            <% } %>
          </ul>
        </div>
      </div>

    </div>
  </div>
  <div class="row">
    <% for (int index = 0; index < GetHabits().Count; index++)
       {
         var id = GetHabits()[index].Id.ToString();
    %>
      <div class="col-md-3 habit-card">
        <h3 style="text-transform: uppercase;"><% Response.Write(GetHabits()[index].Name); %> <span class="badge"><% Response.Write(GetHabits()[index].HabitLogCount); %></span></h3>
        <div style="display: block; ">
          <a class="btn btn-default btn-sm" href="HabitShow.aspx?Id=<% Response.Write(GetHabits()[index].Id); %>">Show</a>
          <a class="btn btn-default btn-sm" href="HabitEdit.aspx?Id=<% Response.Write(GetHabits()[index].Id); %>">Edit</a>
          <a class="btn btn-default btn-sm" href="SetDescription.aspx?Id=<% Response.Write(GetHabits()[index].Id); %>">DONE</a>
        </div>
        <img width="100" height="100" src="<% Response.Write(GetHabits()[index].Image); %>" alt="post img" class="pull-left img-responsive thumb margin10 img-thumbnail">
        <p>
          <% Response.Write(GetHabits()[index].getShortDescription()); %><span class="badge"><% Response.Write(GetHabits()[index].getHabitTimeStr()); %></span>
        </p>

      </div>
    <%
       }
    %>
  </div>
</asp:Content>