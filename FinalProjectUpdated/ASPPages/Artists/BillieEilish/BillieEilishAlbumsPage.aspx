<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="BillieEilishAlbumsPage.aspx.cs" Inherits="FinalProjectUpdated.ASPPages.Artists.BillieEilish.BillieEilishAlbumsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../StyleSheets/BillieEilishStyles/BillieAlbums.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="image-container">
            <a href="BillieAlbums/WWAFAWDWG.aspx">
                <img src="../../pictures/whenweallfallasleepwheredowego.jpg" />
            </a>
            <div class="caption">WHEN WE ALL FALL ASLEEP WHERE DO WE GO?</div>
        </div>
        <div class="image-container">
            <a href="BillieAlbums/HTE.aspx">
                <img src="../../pictures/HappierThanEver.jpg" />
            </a>
            <div class="caption">Happier Than Ever</div>
        </div>
        <div class="image-container">
            <a href="BillieAlbums/HMHAS.aspx">
                <img src="../../pictures/Lover.jpg" />
            </a>
            <div class="caption">HIT ME HARD AND SOFT</div>
        </div>
    </div>



</asp:Content>
