<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="AlternativeAlbums.aspx.cs" Inherits="FinalProjectUpdated.ASPPages.Genres.AlternativeAlbums" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/Genres/Alternative.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>אלבומי אלטרנטיבי </h1>
    <div class="container">
        <div class="image-container">
            <div>
                <a href="<%= ResolveUrl("~/ASPPages/Artists/TaylorSwift/TaylorAlbums/folklore.aspx") %>">
                    <img src="../pictures/AlbumsPictures/folklore.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">folklore </div>
            </div>

            <div>
                <a href="<%= ResolveUrl("~/ASPPages/Artists/TaylorSwift/TaylorAlbums/evermore.aspx") %>">
                    <img src="../pictures/AlbumsPictures/evermore.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">evermore </div>
            </div>

            <div>
                <a href="<%= ResolveUrl("~/ASPPages/Artists/BillieEilish/BillieAlbums/HTE.aspx") %>">
                    <img src="../pictures/AlbumsPictures/HappierThanEver.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Happier Than Ever </div>
            </div>

            <div>
                <a href="<%= ResolveUrl("~/ASPPages/Artists/LanaDelRey/LDRalbums/BornToDie.aspx") %>">
                    <img src="../pictures/AlbumsPictures/BornToDIe.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Born To Die </div>
            </div>

            <div>
                <a href="<%= ResolveUrl("~/ASPPages/Artists/LanaDelRey/LDRalbums/Ultraviolence.aspx") %>">
                    <img src="../pictures/AlbumsPictures/Ultraviolence.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Ultraviolence </div>
            </div>
        </div>

        <div class="image-container">
            <div>
                <a href="<%= ResolveUrl("~/ASPPages/Artists/LanaDelRey/LDRalbums/Honeymoon.aspx") %>">
                    <img src="../pictures/AlbumsPictures/honeymoon.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Honemoon </div>
            </div>

            <div>
                <a href="<%= ResolveUrl("~/ASPPages/Artists/LanaDelRey/LDRalbums/NFR.aspx") %>">
                    <img src="../pictures/AlbumsPictures/NFR.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Norman Fucking Rockwell </div>
            </div>


            <div>
                <a href="<%= ResolveUrl("~/ASPPages/Artists/BillieEilish/BillieAlbums/WWAFAWDWG.aspx") %>">
                    <img src="../pictures/AlbumsPictures/whenweallfallasleepwheredowego.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?</div>
            </div>

            <div>
                <a href="<%= ResolveUrl("~/ASPPages/Artists/LanaDelRey/LDRalbums/BlueBanisters.aspx") %>">
                    <img src="../pictures/AlbumsPictures/BlueBanisters.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Blue Banisters </div>
            </div>

            <div>
                <a href="<%= ResolveUrl("~/ASPPages/Artists/LanaDelRey/LDRalbums/DYKTTATUOB.aspx") %>">
                    <img src="../pictures/AlbumsPictures/didyouknowtheresatunnel.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Did you know that there's a tunnel under ocean blvd </div>
            </div>

        </div>

    </div>
</asp:Content>
