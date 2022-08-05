<%@ Page Title="" Language="C#" MasterPageFile="~/user/Umaster.master" AutoEventWireup="true" CodeFile="GOState.aspx.cs" Inherits="user_Default2" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br /><br /><br /><br /><br /><br />
<center><h1 class="text-theme">STATE OUTBREAK GRAPHS</h1></center><br /><br /><br /><br />
<div class="row">

<div class=" offset-1 col-sm-4">
<h2 >TOTAL CASES STATE WISE</h2>
   
   

    <asp:Chart ID="Chart1" runat="server" Height="325px" Width="769px" 
       >
        <Series>
            <asp:Series Name="Series1" YValuesPerPoint="4">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    
     </div>
    <div class="col-sm-4 offset-2">
    <h2>TOTAL RECOVERY RATE STATE WISE </h2>
            <asp:Chart ID="Chart2" runat="server" Height="325px" Width="769px">
        <Series>
            <asp:Series Name="Series1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    </div>
</div>
<br /><br />

<div class="row">
<div class="col-sm-4 offset-1">
<h2>TOTAL DEATH  RATE STATE WISE </h2>
    <asp:Chart ID="Chart3" runat="server" Width="549px">
        <Series>
            <asp:Series Name="Series1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>

</div>

<div class="col-sm-4  offset-2">
<h2>TOTAL ACTIVE CASE STATE WISE </h2>
    <asp:Chart ID="Chart4" runat="server" Height="284px" Width="449px">
        <Series>
            <asp:Series Name="Series1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>

</div>
</div><br /><br />
<div class="row">
<div class="col-sm-4  offset-1">
<h2>TOTAL NEGATIVE CASES STATE WISE </h2>
 <asp:Chart ID="Chart5" runat="server" Height="284px" Width="449px">
        <Series>
            <asp:Series Name="Series1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
</div>

</asp:Content>

