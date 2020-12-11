package serv;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Client extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Client</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Client at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nomclient = request.getParameter("nomClient");
        String prenomclient = request.getParameter("prenomClient");
        String adresseclient = request.getParameter("adresseClient");
        String telephoneclient = request.getParameter("telephoneClient");
        String emailclient = request.getParameter("emailClient");
        String message = "";
        if (nomclient.trim().isEmpty() || prenomclient.trim().isEmpty()) {
            //redirect
            message = "please fill all the form";
            request.setAttribute("message", message);
            this.getServletContext().getRequestDispatcher("/client.jsp").forward(request, response);
        }
        BeanClient client = new BeanClient();
        client.setNom(nomclient);
        client.setPrenom(prenomclient);
        client.setAdresse(adresseclient);
        client.setEmail(emailclient);
        client.setTelephone(telephoneclient);
        request.setAttribute("client", client);
        request.setAttribute("message", message);

        this.getServletContext().getRequestDispatcher(
                "/client.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
