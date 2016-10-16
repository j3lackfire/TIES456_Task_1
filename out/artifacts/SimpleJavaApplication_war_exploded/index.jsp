<%--
  Created by IntelliJ IDEA.
  User: Le Pham Minh Duc
  Date: 9/18/2016
  Time: 2:23 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="bootstrap.css">
        <script type="text/javascript" src="bootstrap.js"> </script>
        <title>Simple java Servlet - Temperature converter</title>
    </head>
        <body>
        <h1>Simple Java Servlet - Common Units Converter </h1>
        <h3> Temperature Converter </h3>
        <form method="post" action="ConvertTemperature" >
            <input name="inputTemperature" type="number" title="Input Temperature" value="" size="30"/>
            <select name="inputTemperatureType">
                <option selected disabled> --- From temperature --- </option>
                <option value="DEGREE_CELSIUS">Celsius</option>
                <option value="DEGREE_FAHRENHEIT">Fahrenheit</option>
                <option value="DEGREE_RANKINE">Rankine</option>
                <option value="DEGREE_REAUMUR">Reaumur</option>
                <option value="KELVIN">Kelvin</option>
            </select>
            <b> ---- TO ----> </b>
            <select name="outputTemperatureType">
                <option selected disabled> --- To temperature --- </option>
                <option value="DEGREE_CELSIUS">Celsius</option>
                <option value="DEGREE_FAHRENHEIT">Fahrenheit</option>
                <option value="DEGREE_RANKINE">Rankine</option>
                <option value="DEGREE_REAUMUR">Reaumur</option>
                <option value="KELVIN">Kelvin</option>
            </select>
            <input type="submit" value="CONVERT" size="30">
        </form>
        <br>
        <br>
        <h3> Length/Distance Unit Converter </h3>
        <form method="post" action="ConvertLength" >
            <input name="inputLength" type="number" title="Input Temperature" value="" size="30"/>
            <select name="inputLengthType">
                <option selected disabled> --- From length --- </option>
                <option value="ANGSTROMS">Angstroms</option>
                <option value="NANOMETERS">Nanometers</option>
                <option value="MICROINCH">Microinch</option>
                <option value="MICRONS">Microns</option>
                <option value="MILS">Mils</option>
                <option value="MILLIMETERS">Millimeters</option>
                <option value="CENTIMETERS">Centimeters</option>
                <option value="INCHES">Inches</option>
                <option value="LINKS">Links</option>
                <option value="SPANS">Spans</option>
                <option value="FEET">Feet</option>
                <option value="CUBITS">Cubits</option>
                <option value="VARAS">Varas</option>
                <option value="YARDS">Yards</option>
                <option value="METERS">Meters</option>
                <option value="FATHOMS">Fathoms</option>
                <option value="RODS">Rods</option>
                <option value="CHAINS">Chains</option>
                <option value="FURLONGS">Furlongs</option>
                <option value="CABLELENGTHS">Cablelengths</option>
                <option value="KILOMETERS">Kilometers</option>
                <option value="MILES">Miles</option>
                <option value="NAUTICALMILE">Nauticalmile</option>
                <option value="LEAGUE">League</option>
                <option value="NAUTICALLEAGUE">Nauticalleague</option>
            </select>
            <b> ---- TO ----> </b>
            <select name="outputLengthType">
                <option selected disabled> --- To length --- </option>
                <option value="ANGSTROMS">Angstroms</option>
                <option value="NANOMETERS">Nanometers</option>
                <option value="MICROINCH">Microinch</option>
                <option value="MICRONS">Microns</option>
                <option value="MILS">Mils</option>
                <option value="MILLIMETERS">Millimeters</option>
                <option value="CENTIMETERS">Centimeters</option>
                <option value="INCHES">Inches</option>
                <option value="LINKS">Links</option>
                <option value="SPANS">Spans</option>
                <option value="FEET">Feet</option>
                <option value="CUBITS">Cubits</option>
                <option value="VARAS">Varas</option>
                <option value="YARDS">Yards</option>
                <option value="METERS">Meters</option>
                <option value="FATHOMS">Fathoms</option>
                <option value="RODS">Rods</option>
                <option value="CHAINS">Chains</option>
                <option value="FURLONGS">Furlongs</option>
                <option value="CABLELENGTHS">Cablelengths</option>
                <option value="KILOMETERS">Kilometers</option>
                <option value="MILES">Miles</option>
                <option value="NAUTICALMILE">Nauticalmile</option>
                <option value="LEAGUE">League</option>
                <option value="NAUTICALLEAGUE">Nauticalleague</option>
            </select>
            <input type="submit" value="CONVERT" size="30">
        </form>
        <br>
        <br>
        <h3> Weight Unit Converter </h3>
        <form method="post" action="ConvertWeight" >
            <input name="inputWeight" type="number" title="Input Weight" value="" size="30"/>
            <select name="inputWeightType">
                <option selected disabled> --- From weight --- </option>
                <option value="GRAINS">Grains</option>
                <option value="SCRUPLES">Scruples</option>
                <option value="CARATS">Carats</option>
                <option value="GRAMS">Grams</option>
                <option value="PENNYWEIGHT">Pennyweight</option>
                <option value="DRAM_AVOIR">DramAvoir</option>
                <option value="DRAM_APOTH">DramApoth</option>
                <option value="OUNCES_AVOIR">OuncesAvoir</option>
                <option value="OUNCES_TROY_APOTH">OuncesTroyApoth</option>
                <option value="POUNDALS">Poundals</option>
                <option value="POUNDS_TROY">PoundsTroy</option>
                <option value="POUNDS_AVOIR">PoundsAvoir</option>
                <option value="KILOGRAMS">Kilograms</option>
                <option value="STONES">Stones</option>
                <option value="QUARTER_US">QuarterUS</option>
                <option value="SLUGS">Slugs</option>
                <option value="WEIGHT_100_U_SCWT">weight100UScwt</option>
                <option value="SHORT_TONS">ShortTons</option>
                <option value="METRIC_TONS_TONNE">MetricTonsTonne</option>
                <option value="LONG_TONS">LongTons</option>
            </select>
            <b> ---- TO ----> </b>
            <select name="outputWeightType">
                <option selected disabled> --- To weight --- </option>
                <option value="GRAINS">Grains</option>
                <option value="SCRUPLES">Scruples</option>
                <option value="CARATS">Carats</option>
                <option value="GRAMS">Grams</option>
                <option value="PENNYWEIGHT">Pennyweight</option>
                <option value="DRAM_AVOIR">DramAvoir</option>
                <option value="DRAM_APOTH">DramApoth</option>
                <option value="OUNCES_AVOIR">OuncesAvoir</option>
                <option value="OUNCES_TROY_APOTH">OuncesTroyApoth</option>
                <option value="POUNDALS">Poundals</option>
                <option value="POUNDS_TROY">PoundsTroy</option>
                <option value="POUNDS_AVOIR">PoundsAvoir</option>
                <option value="KILOGRAMS">Kilograms</option>
                <option value="STONES">Stones</option>
                <option value="QUARTER_US">QuarterUS</option>
                <option value="SLUGS">Slugs</option>
                <option value="WEIGHT_100_U_SCWT">weight100UScwt</option>
                <option value="SHORT_TONS">ShortTons</option>
                <option value="METRIC_TONS_TONNE">MetricTonsTonne</option>
                <option value="LONG_TONS">LongTons</option>
            </select>
            <input type="submit" value="CONVERT" size="30">
        </form>
    </body>
</html>
