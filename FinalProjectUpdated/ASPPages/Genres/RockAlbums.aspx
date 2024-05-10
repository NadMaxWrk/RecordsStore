<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="RockAlbums.aspx.cs" Inherits="FinalProjectUpdated.ASPPages.Genres.Rock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/Genres/Rock.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 > אלבומי רוק משולב</h1>

    <div class="container">
        <div class="image-container">
            <div>
                <a href="<%= ResolveUrl("~/ASPPages/Artists/HarryStyles/HSAlbumsPages/FineLine.aspx") %>">
                    <img src="../pictures/AlbumsPictures/FineLine.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Fine Line </div>
            </div>

            <div>
                <a href="<%= ResolveUrl("~/ASPPages/Artists/HarryStyles/HSAlbumsPages/HS.aspx") %>">
                    <img src="../pictures/AlbumsPictures/HarryStyles-albumcover.png" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Harry Styles </div>
            </div>

            <div>
                <a href="<%= ResolveUrl("~/ASPPages/Artists/BillieEilish/BillieAlbums/HTE.aspx") %>">
                    <img src="../pictures/AlbumsPictures/HappierThanEver.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Happier Than Ever </div>
            </div>

            <div>
                <a href="<%= ResolveUrl("~/ASPPages/Artists/LanaDelRey/LDRalbums/Ultraviolence.aspx") %>">
                    <img src="../pictures/AlbumsPictures/Ultraviolence.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Ultraviolence </div>
            </div>

            <div>
                <a href="<%= ResolveUrl("~/ASPPages/Artists/LanaDelRey/LDRalbums/NFR.aspx") %>">
                    <img src="../pictures/AlbumsPictures/NFR.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Norman Fucking Rockwell </div>
            </div>

        </div>

    </div>



</asp:Content>
