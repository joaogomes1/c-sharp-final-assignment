<%@ Page Title="" Language="C#" MasterPageFile="~/Projeto.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Projeto3.Admin.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <div class="row margin-top-60">
        <div class="col-12">
            <div class="box border">
                <asp:GridView ID="GridViewFeedback" Width="100%" CellPadding="8" HeaderStyle-BackColor="#dfdfdf" BorderColor="#c0c0c0" AutoGenerateColumns="true" runat="server"></asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
