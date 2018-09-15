<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="reset" />
        <signal name="XLXN_3" />
        <signal name="XLXN_7" />
        <signal name="HS" />
        <signal name="VS" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12(10:0)" />
        <signal name="XLXN_13(10:0)" />
        <signal name="R(2:0)" />
        <signal name="G(2:0)" />
        <signal name="B(1:0)" />
        <signal name="numero(3:0)" />
        <signal name="bder" />
        <signal name="bizq" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="HS" />
        <port polarity="Output" name="VS" />
        <port polarity="Output" name="R(2:0)" />
        <port polarity="Output" name="G(2:0)" />
        <port polarity="Output" name="B(1:0)" />
        <port polarity="Input" name="numero(3:0)" />
        <port polarity="Input" name="bder" />
        <port polarity="Input" name="bizq" />
        <blockdef name="vga_controller_640_60">
            <timestamp>2015-4-22T20:29:41</timestamp>
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
        <blockdef name="pintar">
            <timestamp>2016-10-2T18:18:33</timestamp>
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-320" height="512" />
        </blockdef>
        <block symbolname="vga_controller_640_60" name="XLXI_1">
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="XLXN_7" name="pixel_clk" />
            <blockpin signalname="HS" name="HS" />
            <blockpin signalname="VS" name="VS" />
            <blockpin signalname="XLXN_11" name="blank" />
            <blockpin signalname="XLXN_12(10:0)" name="hcount(10:0)" />
            <blockpin signalname="XLXN_13(10:0)" name="vcount(10:0)" />
        </block>
        <block symbolname="ftc" name="XLXI_5">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin signalname="XLXN_3" name="T" />
            <blockpin signalname="XLXN_7" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_3" name="P" />
        </block>
        <block symbolname="pintar" name="XLXI_7">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_11" name="blank" />
            <blockpin signalname="bder" name="bder" />
            <blockpin signalname="bizq" name="bizq" />
            <blockpin signalname="numero(3:0)" name="numero(3:0)" />
            <blockpin signalname="XLXN_12(10:0)" name="hcount(10:0)" />
            <blockpin signalname="XLXN_13(10:0)" name="vcount(10:0)" />
            <blockpin signalname="R(2:0)" name="R(2:0)" />
            <blockpin signalname="G(2:0)" name="G(2:0)" />
            <blockpin signalname="B(1:0)" name="B(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1440" y="1568" name="XLXI_1" orien="R0">
        </instance>
        <instance x="880" y="1584" name="XLXI_5" orien="R0" />
        <branch name="clk">
            <wire x2="880" y1="1456" y2="1456" x1="848" />
        </branch>
        <iomarker fontsize="28" x="848" y="1456" name="clk" orien="R180" />
        <branch name="reset">
            <wire x2="880" y1="1552" y2="1552" x1="848" />
        </branch>
        <iomarker fontsize="28" x="848" y="1552" name="reset" orien="R180" />
        <instance x="656" y="1200" name="XLXI_6" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="720" y1="1200" y2="1328" x1="720" />
            <wire x2="880" y1="1328" y2="1328" x1="720" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1344" y1="1328" y2="1328" x1="1264" />
            <wire x2="1344" y1="1328" y2="1536" x1="1344" />
            <wire x2="1440" y1="1536" y2="1536" x1="1344" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1280" type="branch" />
            <wire x2="1376" y1="1280" y2="1280" x1="1328" />
            <wire x2="1440" y1="1280" y2="1280" x1="1376" />
        </branch>
        <branch name="HS">
            <wire x2="1856" y1="1280" y2="1280" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1280" name="HS" orien="R0" />
        <branch name="VS">
            <wire x2="1856" y1="1344" y2="1344" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1344" name="VS" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="2256" y1="1408" y2="1408" x1="1824" />
        </branch>
        <branch name="XLXN_12(10:0)">
            <wire x2="2256" y1="1472" y2="1472" x1="1824" />
        </branch>
        <branch name="XLXN_13(10:0)">
            <wire x2="2256" y1="1536" y2="1536" x1="1824" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1280" type="branch" />
            <wire x2="2176" y1="1280" y2="1280" x1="2144" />
            <wire x2="2256" y1="1280" y2="1280" x1="2176" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1344" type="branch" />
            <wire x2="2160" y1="1344" y2="1344" x1="2112" />
            <wire x2="2256" y1="1344" y2="1344" x1="2160" />
        </branch>
        <branch name="R(2:0)">
            <wire x2="2672" y1="1280" y2="1280" x1="2640" />
        </branch>
        <iomarker fontsize="28" x="2672" y="1280" name="R(2:0)" orien="R0" />
        <branch name="G(2:0)">
            <wire x2="2672" y1="1408" y2="1408" x1="2640" />
        </branch>
        <iomarker fontsize="28" x="2672" y="1408" name="G(2:0)" orien="R0" />
        <branch name="B(1:0)">
            <wire x2="2672" y1="1536" y2="1536" x1="2640" />
        </branch>
        <iomarker fontsize="28" x="2672" y="1536" name="B(1:0)" orien="R0" />
        <instance x="2256" y="1568" name="XLXI_7" orien="R0">
        </instance>
        <branch name="numero(3:0)">
            <wire x2="2256" y1="1600" y2="1600" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1600" name="numero(3:0)" orien="R180" />
        <branch name="bder">
            <wire x2="2656" y1="1664" y2="1664" x1="2640" />
        </branch>
        <branch name="bizq">
            <wire x2="2656" y1="1728" y2="1728" x1="2640" />
        </branch>
        <iomarker fontsize="28" x="2656" y="1664" name="bder" orien="R0" />
        <iomarker fontsize="28" x="2656" y="1728" name="bizq" orien="R0" />
    </sheet>
</drawing>