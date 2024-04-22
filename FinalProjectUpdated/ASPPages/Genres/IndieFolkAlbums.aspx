<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="IndieFolkAlbums.aspx.cs" Inherits="FinalProjectUpdated.ASPPages.Genres.IndieFolk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/Genres/IndieFolk.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 > אלבומי אינדי/ פולק</h1>


    <div class="container">
    <div class="image-container">
        <div>
            <a href="<%= ResolveUrl("~/ASPPages/Artists/LanaDelRey/LDRalbums/LustForLife.aspx") %>">
                <img src="../pictures/LustForLife.jpg" />
            </a>
            <div style="text-align: center; font-family: Calibri;">Lust For Life </div>
        </div>

        <div>
            <a href="<%= ResolveUrl("~/ASPPages/Artists/TaylorSwift/TaylorAlbums/folklore.aspx") %>">
                <img src="../pictures/folklore.jpg" />
            </a>
            <div style="text-align: center; font-family: Calibri;">folklore </div>
        </div>

        <div>
            <a href="<%= ResolveUrl("~/ASPPages/Artists/TaylorSwift/TaylorAlbums/evermore.aspx") %>">
                <img src="../pictures/evermore.jpg" />
            </a>
            <div style="text-align: center; font-family: Calibri;">evermore </div>
        </div>

        <div>
            <a href="<%= ResolveUrl("~/ASPPages/Artists/LanaDelRey/LDRalbums/BlueBanisters.aspx") %>">
                <img src="../pictures/BlueBanisters.jpg" />
            </a>
            <div style="text-align: center; font-family: Calibri;">Blue Banisters </div>
        </div>

        <div>
            <a href="<%= ResolveUrl("~/ASPPages/Artists/LanaDelRey/LDRalbums/Honeymoon.aspx") %>">
                <img src="../pictures/honeymoon.jpg" />
            </a>
            <div style="text-align: center; font-family: Calibri;">Honemoon </div>
        </div>

        <div>
            <a href="<%= ResolveUrl("~/ASPPages/Artists/LanaDelRey/LDRalbums/Ultraviolence.aspx") %>">
                <img src="../pictures/Ultraviolence.jpg" />
            </a>
            <div style="text-align: center; font-family: Calibri;">Ultraviolence </div>
        </div>

    </div>

</div>















</asp:Content>
