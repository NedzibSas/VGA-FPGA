<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="clk" />
        <signal name="reset" />
        <signal name="XLXN_4" />
        <signal name="XLXN_6(10:0)" />
        <signal name="HS" />
        <signal name="VS" />
        <signal name="R(2:0)" />
        <signal name="G(2:0)" />
        <signal name="B(1:0)" />
        <signal name="XLXN_5" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14(10:0)" />
        <signal name="XLXN_15(10:0)" />
        <signal name="XLXN_17(7:0)" />
        <signal name="XLXN_19(10:0)" />
        <signal name="XLXN_20(10:0)" />
        <signal name="XLXN_21(7:0)" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24(2:0)" />
        <signal name="XLXN_7(10:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="HS" />
        <port polarity="Output" name="VS" />
        <port polarity="Output" name="R(2:0)" />
        <port polarity="Output" name="G(2:0)" />
        <port polarity="Output" name="B(1:0)" />
        <blockdef name="vga_controller_640_60">
            <timestamp>2014-8-25T20:33:44</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ftc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="ROM_Letra">
            <timestamp>2014-8-26T20:48:55</timestamp>
            <rect width="288" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
        </blockdef>
        <blockdef name="lea_ROM">
            <timestamp>2014-8-26T20:49:1</timestamp>
            <rect width="352" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-364" height="24" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <rect width="64" x="416" y="-268" height="24" />
            <line x2="480" y1="-256" y2="-256" x1="416" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-76" height="24" />
            <line x2="480" y1="-64" y2="-64" x1="416" />
        </blockdef>
        <block symbolname="vga_controller_640_60" name="XLXI_1">
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="XLXN_4" name="pixel_clk" />
            <blockpin signalname="HS" name="HS" />
            <blockpin signalname="VS" name="VS" />
            <blockpin signalname="XLXN_13" name="blank" />
            <blockpin signalname="XLXN_6(10:0)" name="hcount(10:0)" />
            <blockpin signalname="XLXN_7(10:0)" name="vcount(10:0)" />
        </block>
        <block symbolname="ftc" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin signalname="XLXN_1" name="T" />
            <blockpin signalname="XLXN_4" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_3">
            <blockpin signalname="XLXN_1" name="P" />
        </block>
        <block symbolname="ROM_Letra" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_23" name="en" />
            <blockpin signalname="XLXN_24(2:0)" name="Direcciones(2:0)" />
            <blockpin signalname="XLXN_17(7:0)" name="Data(7:0)" />
        </block>
        <block symbolname="lea_ROM" name="XLXI_6">
            <blockpin signalname="XLXN_4" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_13" name="blank" />
            <blockpin signalname="XLXN_6(10:0)" name="Count_H(10:0)" />
            <blockpin signalname="XLXN_7(10:0)" name="Count_V(10:0)" />
            <blockpin signalname="XLXN_17(7:0)" name="Data_Rom(7:0)" />
            <blockpin signalname="XLXN_24(2:0)" name="Count_Addr(2:0)" />
            <blockpin signalname="R(2:0)" name="R(2:0)" />
            <blockpin signalname="G(2:0)" name="G(2:0)" />
            <blockpin signalname="B(1:0)" name="B(1:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_7">
            <blockpin signalname="XLXN_23" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1312" y="1232" name="XLXI_1" orien="R0">
        </instance>
        <instance x="528" y="1248" name="XLXI_2" orien="R0" />
        <instance x="224" y="848" name="XLXI_3" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="288" y1="848" y2="992" x1="288" />
            <wire x2="528" y1="992" y2="992" x1="288" />
        </branch>
        <branch name="clk">
            <wire x2="528" y1="1120" y2="1120" x1="496" />
        </branch>
        <iomarker fontsize="28" x="496" y="1120" name="clk" orien="R180" />
        <branch name="reset">
            <wire x2="528" y1="1216" y2="1216" x1="496" />
        </branch>
        <iomarker fontsize="28" x="496" y="1216" name="reset" orien="R180" />
        <branch name="XLXN_6(10:0)">
            <wire x2="1712" y1="1136" y2="1136" x1="1696" />
            <wire x2="2336" y1="1088" y2="1088" x1="1712" />
            <wire x2="1712" y1="1088" y2="1136" x1="1712" />
        </branch>
        <branch name="HS">
            <wire x2="1728" y1="944" y2="944" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="944" name="HS" orien="R0" />
        <branch name="VS">
            <wire x2="1728" y1="1008" y2="1008" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="1008" name="VS" orien="R0" />
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="944" type="branch" />
            <wire x2="1232" y1="944" y2="944" x1="1200" />
            <wire x2="1312" y1="944" y2="944" x1="1232" />
        </branch>
        <branch name="G(2:0)">
            <wire x2="2896" y1="1088" y2="1088" x1="2816" />
            <wire x2="2912" y1="1072" y2="1072" x1="2896" />
            <wire x2="2896" y1="1072" y2="1088" x1="2896" />
        </branch>
        <branch name="B(1:0)">
            <wire x2="2896" y1="1184" y2="1184" x1="2816" />
            <wire x2="2896" y1="1184" y2="1200" x1="2896" />
            <wire x2="2912" y1="1200" y2="1200" x1="2896" />
        </branch>
        <iomarker fontsize="28" x="2912" y="1072" name="G(2:0)" orien="R0" />
        <iomarker fontsize="28" x="2912" y="1200" name="B(1:0)" orien="R0" />
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="960" type="branch" />
            <wire x2="2256" y1="960" y2="960" x1="2240" />
            <wire x2="2336" y1="960" y2="960" x1="2256" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="2016" y1="1072" y2="1072" x1="1696" />
            <wire x2="2016" y1="1024" y2="1072" x1="2016" />
            <wire x2="2336" y1="1024" y2="1024" x1="2016" />
        </branch>
        <branch name="R(2:0)">
            <wire x2="2896" y1="992" y2="992" x1="2816" />
            <wire x2="2912" y1="944" y2="944" x1="2896" />
            <wire x2="2896" y1="944" y2="992" x1="2896" />
        </branch>
        <iomarker fontsize="28" x="2912" y="944" name="R(2:0)" orien="R0" />
        <branch name="XLXN_17(7:0)">
            <wire x2="2320" y1="1440" y2="1440" x1="2224" />
            <wire x2="2336" y1="1216" y2="1216" x1="2320" />
            <wire x2="2320" y1="1216" y2="1440" x1="2320" />
        </branch>
        <instance x="2336" y="1248" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_4">
            <wire x2="1104" y1="992" y2="992" x1="912" />
            <wire x2="1104" y1="992" y2="1200" x1="1104" />
            <wire x2="1312" y1="1200" y2="1200" x1="1104" />
            <wire x2="2336" y1="896" y2="896" x1="1104" />
            <wire x2="1104" y1="896" y2="992" x1="1104" />
        </branch>
        <instance x="1808" y="1600" name="XLXI_5" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1440" type="branch" />
            <wire x2="1760" y1="1440" y2="1440" x1="1728" />
            <wire x2="1808" y1="1440" y2="1440" x1="1760" />
        </branch>
        <instance x="1552" y="1472" name="XLXI_7" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="1616" y1="1472" y2="1504" x1="1616" />
            <wire x2="1808" y1="1504" y2="1504" x1="1616" />
        </branch>
        <branch name="XLXN_24(2:0)">
            <wire x2="1808" y1="1568" y2="1568" x1="1744" />
            <wire x2="1744" y1="1568" y2="1680" x1="1744" />
            <wire x2="2880" y1="1680" y2="1680" x1="1744" />
            <wire x2="2880" y1="896" y2="896" x1="2816" />
            <wire x2="2880" y1="896" y2="1680" x1="2880" />
        </branch>
        <branch name="XLXN_7(10:0)">
            <wire x2="1712" y1="1200" y2="1200" x1="1696" />
            <wire x2="2336" y1="1152" y2="1152" x1="1712" />
            <wire x2="1712" y1="1152" y2="1200" x1="1712" />
        </branch>
    </sheet>
</drawing>