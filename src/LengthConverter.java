import net.webservicex.LengthUnit;
import net.webservicex.LengthUnitSoap;
import net.webservicex.Lengths;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Le Pham Minh Duc on 9/19/2016.
 */
@WebServlet(name = "LengthConverter")
public class LengthConverter extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String header = Ultilities.getHtmlHeaders("Length Converter");
        String ending = Ultilities.getHtmlEnding();

        String inputLength = request.getParameter("inputLength");
        String inputLengthType = request.getParameter("inputLengthType");
        String outputLengthType = request.getParameter("outputLengthType");

        double convertedValue = convertLength(inputLength, inputLengthType, outputLengthType);

        String content = "";
        content += Ultilities.htmlAddLine("<b>" + inputLength + "</b> " + inputLengthType + " is converted to <b>" + convertedValue + "</b> " + outputLengthType);

        String finalOutput = header + content + ending;

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        try (PrintWriter writer = response.getWriter()) {
            writer.println(finalOutput);
        }
    }

    private double convertLength(String inputLength, String inputType, String outputType) {
        double inputValue = Double.parseDouble(inputLength);
        Lengths inputLengths = Lengths.valueOf(inputType);
        Lengths outputLengths = Lengths.valueOf(outputType);

        LengthUnit lengthUnit = new LengthUnit();
        LengthUnitSoap lengthUnitSoap = lengthUnit.getLengthUnitSoap();
        return lengthUnitSoap.changeLengthUnit(inputValue, inputLengths, outputLengths);
    }

}
