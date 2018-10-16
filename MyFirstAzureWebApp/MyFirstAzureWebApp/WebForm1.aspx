
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyFirstAzureWebApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Hi How Are You"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="This is my first Azure Web App"></asp:Label>
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" AutoGenerateSelectButton="True" DataSourceID="EntityDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GoldenDBConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateInsertButton="True" AutoGenerateRows="False" DataSourceID="EntityDataSource1" Height="50px" OnItemInserted="DetailsView1_ItemInserted" Width="125px">
        </asp:DetailsView>
    </form>
</body>
</html>
