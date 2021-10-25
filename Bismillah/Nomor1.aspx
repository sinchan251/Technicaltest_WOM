<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nomor1.aspx.cs" Inherits="Bismillah.Views.Home.Nomor1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="align-content:center">
    <div>
       <h2 align="center" >DATA PENDUDUK SIPIL</h2>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechnicaltestConnectionString %>" SelectCommand="SELECT * FROM [m_dukcapil_data]" DeleteCommand="DELETE FROM [m_dukcapil_data] WHERE [m_dukcapil_data_id] = @m_dukcapil_data_id" InsertCommand="INSERT INTO [m_dukcapil_data] ([NIK], [name], [maiden_name], [birth_date], [gender], [religion_id], [martial_status]) VALUES (@NIK, @name, @maiden_name, @birth_date, @gender, @religion_id, @martial_status)" UpdateCommand="UPDATE [m_dukcapil_data] SET [NIK] = @NIK, [name] = @name, [maiden_name] = @maiden_name, [birth_date] = @birth_date, [gender] = @gender, [religion_id] = @religion_id, [martial_status] = @martial_status WHERE [m_dukcapil_data_id] = @m_dukcapil_data_id">
            <DeleteParameters>
                <asp:Parameter Name="m_dukcapil_data_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NIK" Type="Int64" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="maiden_name" Type="String" />
                <asp:Parameter DbType="Date" Name="birth_date" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="religion_id" Type="Int32" />
                <asp:Parameter Name="martial_status" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NIK" Type="Int64" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="maiden_name" Type="String" />
                <asp:Parameter DbType="Date" Name="birth_date" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="religion_id" Type="Int32" />
                <asp:Parameter Name="martial_status" Type="Int32" />
                <asp:Parameter Name="m_dukcapil_data_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <button type="submit" style="height: 24px; width: 122px; right: 100px;" > <a style="text-decoration:none" href= "Haltambahdata.aspx" target=_blank>Tambah Data</a></button>            
        <asp:GridView ID="GridView1" runat="server" Height="194px" Width="551px"  AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" DataKeyNames="m_dukcapil_data_id">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="NIK" HeaderText="NIK" SortExpression="NIK" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="maiden_name" HeaderText="maiden_name" SortExpression="maiden_name" />
                <asp:BoundField DataField="birth_date" HeaderText="birth_date" SortExpression="birth_date" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="religion_id" HeaderText="religion_id" SortExpression="religion_id" />
                <asp:BoundField DataField="martial_status" HeaderText="martial_status" SortExpression="martial_status" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    </form>
</body>
</html>
