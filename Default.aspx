<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>HABITS </h1><asp:LinkButton ID="btnRandom" 
            runat="server" 
            CssClass="btn btn-primary" OnClick="btnRandom_Click">
    <span aria-hidden="true" class="glyphicon glyphicon-plus"></span>
</asp:LinkButton>
        <p class="lead">Register all the habits that you usually do or you wanna develop them.</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Write my line of source code</h2>
            <p>
                I will need to write a least on line of code and commit it on github/bibucket
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Read 1 important thing</h2>
            <p>
                It can be a professional stuff or just something that you wanna heard on the news
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>What is next</h2>
            <p>
                This is planning tasks for the next day, they are  usually are at the end of the day or it can be made to in the first hours of the day.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>


    </div>
</asp:Content>
