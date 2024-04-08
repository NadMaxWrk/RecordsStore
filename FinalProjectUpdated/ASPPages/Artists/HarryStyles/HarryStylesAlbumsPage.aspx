<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" 
    CodeBehind="HarryStylesAlbumsPage.aspx.cs" 
    Inherits="FinalProjectUpdated.ASPPages.HarryStyles.HarryStylesAlbumsPage" %>
<asp:Content ID="HSHead" ContentPlaceHolderID="head" runat="server">
    <link href="../../StyleSheets/HSAlbums.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="HSBody" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="display">

    <div class="column img ">
        <a href="HarryStylesAlbums/HS1.aspx">
            <img src="../../pictures/HarryStyles-albumcover.png" />
        </a>
        <div> Harry Styles </div>
    </div>

    <div class="column img">
        <a href="HarryStylesAlbums/FineLine.aspx">
            <img src="../../pictures/FineLine.jpg" />
        </a>
        <div style="text-align:center; font-family: Calibri"> Fine Line</div>
    </div>

    <div class="column img">
        <a href="HarryStylesAlbums/HarrysHouse.aspx">
            <img src="../../pictures/Harry'sHouse.jpg" />
        </a>            
        <div style="text-align:center; font-family: Calibri"> Harry's House</div>
    </div>

</div>







</asp:Content>
