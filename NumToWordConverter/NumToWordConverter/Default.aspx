<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NumToWordConverter._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Number to word converter</h1>
        <p class="lead">Please enter the number: 
            <asp:TextBox ID="TextBox1" runat="server" MaxLength="9"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
    ControlToValidate="TextBox1" runat="server"
    ErrorMessage="Only Numbers allowed"
    ValidationExpression="\d+">
</asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </p>
        <p>
            <asp:Label ID="ResultVal" runat="server" Text="Label"  Visible="false"></asp:Label>
        </p>
    </div>
   <script>
$(document).ready(function(){
    $("#<%=Button1.ClientID %>").click(function () {
        var txt = $('#<%=TextBox1.ClientID %>');
        if (txt.val() == null || txt.val() == '') {
            alert('Please enter a number');
            return false;
        }
  });
});
</script>

</asp:Content>
