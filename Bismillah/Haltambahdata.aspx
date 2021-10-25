<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Haltambahdata.aspx.cs" Inherits="Bismillah.Haltambahdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form method="get" id="form1" runat="server" style="white-space: normal; letter-spacing: normal; word-spacing: normal; text-indent: inherit; text-align: left; vertical-align: middle; line-height: normal; display: block; table-layout: fixed; border-collapse: collapse; border-spacing: 0px; empty-cells: show; caption-side: top">
    <div align="left">
     <h2 align="center" >TAMBAH DATA PENDUDUK SIPIL</h2>
    </div>
    <hr />    
    <asp:Table ID="Table1" runat="server" CellPadding="1"  HorizontalAlign="Center" 
        CellSpacing="20" >
     <asp:TableRow ID="TableRow1" runat="server" Font-Bold="True">
         <asp:TableCell ID="TableCell1" runat="server" ><label for = "nik" style="left: 100px"> NIK  </asp:TableCell>
         <asp:TableCell ID="TableCell13" runat="server" >:</asp:TableCell>
         <asp:TableCell ID="TableCell2" runat="server" ><asp:TextBox ID="TextNIK" runat="server"></asp:TextBox></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow ID="TableRow7" runat="server" Font-Bold="True">
         <asp:TableCell ID="TableCell19" runat="server" ><label for = "name" style="left: 100px"> Full Name</asp:TableCell>
         <asp:TableCell ID="TableCell20" runat="server" >:</asp:TableCell>
         <asp:TableCell ID="TableCell21" runat="server" ><asp:TextBox ID="TextFName" runat="server"></asp:TextBox></asp:TableCell>
    </asp:TableRow>

    <asp:TableRow ID="TableRow2" runat="server" Font-Bold="True">
         <asp:TableCell ID="TableCell3" runat="server" ><label for = "Name" style="left: 100px"> Maiden Name </asp:TableCell>
         <asp:TableCell ID="TableCell14" runat="server" >:</asp:TableCell>
         <asp:TableCell ID="TableCell4" runat="server" ><asp:TextBox ID="TextMname" runat="server"></asp:TextBox></asp:TableCell>
    </asp:TableRow>

    <asp:TableRow ID="TableRow3" runat="server" Font-Bold="True">
         <asp:TableCell ID="TableCell5" runat="server" ><label for = "TL" style="left: 100px"> Tanggal Lahir  </asp:TableCell>
         <asp:TableCell ID="TableCell15" runat="server" >:</asp:TableCell>
         <asp:TableCell ID="TableCell6" runat="server" >
              <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" 
            BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
            Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
            NextPrevFormat="ShortMonth" SelectedDate="10/23/2021 11:22:32" 
            ShowGridLines="True" Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
         </asp:TableCell>
    </asp:TableRow>

    <asp:TableRow ID="TableRow4" runat="server" Font-Bold="True">
         <asp:TableCell ID="TableCell7" runat="server" ><label for = "gender" style="left: 100px"> Gender  </asp:TableCell>
         <asp:TableCell ID="TableCell16" runat="server" >:</asp:TableCell>
         <asp:TableCell ID="TableCell8" runat="server" >
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Text="MALE" Value="MALE" ></asp:ListItem>
            <asp:ListItem Text="FEMALE" Value="FEMALE"></asp:ListItem>
        </asp:RadioButtonList>
         </asp:TableCell>
    </asp:TableRow>

    <asp:TableRow ID="TableRow5" runat="server" Font-Bold="True">
         <asp:TableCell ID="TableCell9" runat="server" ><label for = "agama" style="left: 100px"> Religion  </asp:TableCell>
         <asp:TableCell ID="TableCell17" runat="server" >:</asp:TableCell>
         <asp:TableCell ID="TableCell10" runat="server" > 
             <asp:DropDownList ID="DropDownList1" runat="server">
             <asp:ListItem Selected=True Value = 1 Enabled=true>             
             1 - ISLAM
             </asp:ListItem>
            <asp:ListItem  Value = 2 Enabled=true>             
             2 - BUDHA
             </asp:ListItem>
             <asp:ListItem  Value = 3 Enabled=true>             
             3 - HINDU
             </asp:ListItem>
             <asp:ListItem  Value = 4 Enabled=true>             
             4 - KRISTEN PROTESTAN
             </asp:ListItem>
             <asp:ListItem  Value = 5 Enabled=true>             
             5 - KRISTEN KATHOLIK
             </asp:ListItem>
             <asp:ListItem Value = 6 Enabled=true>             
             6 - KONGHUCU
             </asp:ListItem>
             <asp:ListItem  Value = 7 Enabled=true>             
             7 - Lainnya
             </asp:ListItem>
             
             </asp:DropDownList>
         </asp:TableCell>
    </asp:TableRow>

    <asp:TableRow ID="TableRow6" runat="server" Font-Bold="True">
         <asp:TableCell ID="TableCell11" runat="server" ><label for = "status" style="left: 100px"> Martial Status  </asp:TableCell>
         <asp:TableCell ID="TableCell18" runat="server" >:</asp:TableCell>
         <asp:TableCell ID="TableCell12" runat="server" >
             <asp:DropDownList ID="DropDownList2" runat="server">
             <asp:ListItem Selected=True Value=1>
             1 - SINGLE
             </asp:ListItem >
             <asp:ListItem Value=2>
             2 - WIDOW
             </asp:ListItem>
             <asp:ListItem Value=3>
             3 - WIDOWER
             </asp:ListItem>
             <asp:ListItem Value=4>
             4 - MARRIED
             </asp:ListItem>
             </asp:DropDownList>
         </asp:TableCell>
    </asp:TableRow>
    </asp:Table>
    <div align=center >
        <asp:Button ID="Button1" runat="server" Text="SAVE" Width="58px" 
            onclick="Button1_Click" />
        
        <asp:Button ID="Button2" runat="server" Text="Cancel" />

    </div>
    </form>
</body>
</html>
