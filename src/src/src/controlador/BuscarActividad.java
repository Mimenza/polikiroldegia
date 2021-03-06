package src.src.controlador;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.bean.Actividad;
import modelo.dao.ModeloActividad;

/**
 * Servlet implementation class BuscarActividad
 */
@WebServlet("/BuscarActividad")
public class BuscarActividad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuscarActividad() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String query = request.getParameter("query");
		
		ModeloActividad mActividad = new ModeloActividad();
		ArrayList< Actividad > actividades = mActividad.buscar(query);
		
		request.setAttribute("actividades", actividades);
		
		request.getRequestDispatcher("verActividades.jsp").forward(request, response);
	}

}
