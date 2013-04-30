<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="VolunteerAgreement.aspx.vb" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br /> <h1> Agreements</h1> 
    <br />
    The following agreement must be printed and signed before you can volunteer.<br />
    If you can not view the agreement below, please click the following link:<br />
    <a href = "VolunteerAgreement.pdf"> Agreement </a>

    <br />
    <br />

    <br />
    <iframe src = "VolunteerAgreement.pdf" width=500 height=400 >Agreement</iframe>
</asp:Content>

