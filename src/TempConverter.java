import com.sun.xml.internal.ws.message.StringHeader;
import net.webservicex.ConvertTemperature;
import net.webservicex.ConvertTemperatureSoap;
import net.webservicex.TemperatureUnit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Le Pham Minh Duc on 9/18/2016.
 */
@WebServlet(name = "TempConverter")
public class TempConverter extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String header = Ultilities.getHtmlHeaders("Temperature Converter");
        String ending = Ultilities.getHtmlEnding();

        String inputTemperature = request.getParameter("inputTemperature");
        String inputTemperatureType = request.getParameter("inputTemperatureType");
        String outputTemperatureType = request.getParameter("outputTemperatureType");

        double convertedValue = convertTemperature(inputTemperature, inputTemperatureType, outputTemperatureType);

        String content = "";
        String inputArray[] = inputTemperatureType.split("_");
        String outputArray[] = outputTemperatureType.split("_");
        content += Ultilities.htmlAddLine("<b>" + inputTemperature + "</b> " + inputArray[inputArray.length-1] + " is converted to <b>" + convertedValue + "</b> " + outputArray[outputArray.length-1]);

        String finalOutput = header + content + ending;

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        try (PrintWriter writer = response.getWriter()) {
            writer.println(finalOutput);
        }
    }

    private double convertTemperature(String inputTemperature, String inputTemperatureType, String outputTemperatureType) {
        double inputValue = Double.parseDouble(inputTemperature);
        TemperatureUnit inputTemp = TemperatureUnit.valueOf(inputTemperatureType);
        TemperatureUnit outputTemp = TemperatureUnit.valueOf(outputTemperatureType);

        ConvertTemperature convertTemperature = new ConvertTemperature();
        ConvertTemperatureSoap convertTemperatureSoap = convertTemperature.getConvertTemperatureSoap();
        double outputValue = convertTemperatureSoap.convertTemp(inputValue, inputTemp, outputTemp);

        return outputValue;
    }
}
