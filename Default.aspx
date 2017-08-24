<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
      
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="padding: 0;">
      <div class="container" style="padding: 0;">
        <div class="row">
          <div class="col-md-6">
            <h1>HABITS </h1><asp:LinkButton ID="btnRandom" runat="server" CssClass="btn btn-primary" OnClick="btnRandom_Click">
            <span aria-hidden="true" class="glyphicon glyphicon-plus"></span></asp:LinkButton>
            <p class="lead">Register all the _habits that you usually do or you wanna develop them.</p>
          </div>
          <div class="col-md-6">
            <ul class="list-group">
              <% for (var index = 0; index < DoneHabits.Count; index++)
                {
              %>
              <li class="list-group-item">
                <a class="btn btn-success" style="min-width: 200px;" href="HabitShow.aspx?Id=<% Response.Write(DoneHabits[index].Id); %>"><% Response.Write(DoneHabits[index].Name); %></a>
                <span class="badge" style="position: relative; top: 17px;">Done At <% Response.Write(DoneHabits[index].getDoneDateStr()); %></span>
              </li>
              <% }%>
            </ul>
          </div>
        </div>
        
      </div>
    </div>
    <div class="row">
      <% for (int index = 0; index < GetHabits().Count; index++) {
                                         var id = GetHabits()[index].Id.ToString();
            %>
        <div class="col-md-4">
            <h2><% Response.Write(GetHabits()[index].Name); %></h2>
            <img  width="100" height="100" src="<% Response.Write(GetHabits()[index].Image); %>" alt="post img" class="pull-left img-responsive thumb margin10 img-thumbnail">
            <p>
                <% Response.Write(GetHabits()[index].getShortDescription()); %><span class="badge"><% Response.Write(GetHabits()[index].getHabitTimeStr()); %></span>
            </p>
            <p>
                <a class="btn btn-default" href="HabitShow.aspx?Id=<% Response.Write(GetHabits()[index].Id); %>">Show</a>
                <a class="btn btn-default" href="HabitEdit.aspx?Id=<% Response.Write(GetHabits()[index].Id); %>">Edit</a>
                <a class="btn btn-default" href="SetDescription.aspx?Id=<% Response.Write(GetHabits()[index].Id); %>">DONE</a>
            </p>
        </div>
      <%
          }
       %>
    </div>
</asp:Content>
