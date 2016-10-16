import net.webservicex.ConvertWeights;
import net.webservicex.ConvertWeightsSoap;
import net.webservicex.WeightUnit;

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
@WebServlet(name = "WeightConverter")
public class WeightConverter extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String header = Ultilities.getHtmlHeaders("Weight Converter");
        String ending = Ultilities.getHtmlEnding();

        String inputWeight = request.getParameter("inputWeight");
        String inputWeightType = request.getParameter("inputWeightType");
        String outputWeightType = request.getParameter("outputWeightType");

        double convertedValue = convertWeight(inputWeight, inputWeightType, outputWeightType);

        String content = "";
        content += Ultilities.htmlAddLine("<b>" + inputWeight + "</b> " + inputWeightType + " is converted to <b>" + convertedValue + "</b> " + outputWeightType);

        String finalOutput = header + content + ending;

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        try (PrintWriter writer = response.getWriter()) {
            writer.println(finalOutput);
        }
    }

    private double convertWeight(String inputValue, String inputType, String outputType) {
        double value = Double.parseDouble(inputValue);
        WeightUnit inputUnit = WeightUnit.valueOf(inputType);
        WeightUnit outputUnit = WeightUnit.valueOf(outputType);
        ConvertWeights convertWeights = new ConvertWeights();
        ConvertWeightsSoap convertWeightsSoap = convertWeights.getConvertWeightsSoap();
        return convertWeightsSoap.convertWeight(value, inputUnit, outputUnit);
    }

}
