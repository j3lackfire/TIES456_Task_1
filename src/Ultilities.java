/**
 * Created by Le Pham Minh Duc on 9/19/2016.
 */
public class Ultilities {

    public static String getHtmlHeaders(String customTitle) {
        return "<head>\n" +
                "<link rel=\"stylesheet\" type=\"text/css\" href=\"bootstrap.css\">" +
                "<script type=\"text/javascript\" src=\"bootstrap.js\"> </script>\n" +
                "<meta charset=\"UTF-8\" />\n" +
                "<title>" + customTitle + "</title>\n" +
                "</head>\n"+
                "<body>\n" +
                "<h1>" + customTitle + "</h1>\n<h4>\n";
    }

    public static String getHtmlEnding() {
        return "</h4>\n</body>\n</html>";
    }

    public static String htmlAddLine(String content) {
        return "\n<p>" + content + "</p>";
    }


}
