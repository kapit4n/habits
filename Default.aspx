<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
      
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>HABITS </h1><asp:LinkButton ID="btnRandom" runat="server" CssClass="btn btn-primary" OnClick="btnRandom_Click">
        <span aria-hidden="true" class="glyphicon glyphicon-plus"></span></asp:LinkButton>
        <p class="lead">Register all the habits that you usually do or you wanna develop them.</p>
    </div>

    <div class="row">
      <% for (int i = 0; i < habits.Count; i++) {
            %>
      <div class="col-md-4">
            <h2><% Response.Write(habits[i].name); %></h2>
            <img  width="100" height="100" src="<% Response.Write(habits[i].image); %>" alt="post img" class="pull-left img-responsive thumb margin10 img-thumbnail">
            <p>
                <% Response.Write(habits[i].description); %>
            </p>
            <p>
                <a class="btn btn-default" href="HabitShow.aspx">Learn more &raquo;</a>
            </p>
        </div>
      <%
          }
       %>

    </div>
</asp:Content>
