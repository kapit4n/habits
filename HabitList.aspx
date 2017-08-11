<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HabitList.aspx.cs" Inherits="HabitList" MasterPageFile="~/Site.Master"  %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
      <% for (int index = 0; index < Habits1.Count; index++) {
          string Id = Habits1[index].Id.ToString();
            %>
        <div class="col-md-12">
            <h2><% Response.Write(Habits1[index].Name); %></h2>
            <img  width="100" height="100" src="<% Response.Write(Habits1[index].Image); %>" alt="post img" class="pull-left img-responsive thumb margin10 img-thumbnail">
            <p>
                <% Response.Write(Habits1[index].Description); %><span class="badge"><% Response.Write(Habits1[index].getHabitTimeStr()); %></span>
            </p>
            <p>
                <a class="btn btn-default" href="HabitShow.aspx?Id=<% Response.Write(Habits1[index].Id); %>">Show</a>
                <a class="btn btn-default" href="HabitEdit.aspx?Id=<% Response.Write(Habits1[index].Id); %>">Edit</a>
                <%if (Habits1[index].Done) { %>
                  <a class="btn btn-default" href="HabitList.aspx?Id=<% Response.Write(Habits1[index].Id); %>&action=undo">UNDO</a>
                <%} %>
                <%else { %>
                  <a class="btn btn-default" href="HabitList.aspx?Id=<% Response.Write(Habits1[index].Id); %>&action=done">DONE</a>
                <%} %>
            </p>
        </div>
      <%
          }
       %>
    </div>
</asp:Content>
