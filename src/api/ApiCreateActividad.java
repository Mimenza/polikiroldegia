package api;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import modelo.bean.Actividad;
import modelo.bean.Usuario;
import modelo.dao.ModeloActividad;
import modelo.dao.ModeloUsuario;

/**
 * Servlet implementation class ApiCreateActividad
 */
@WebServlet("/ApiCreateActividad")
public class ApiCreateActividad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApiCreateActividad() {
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
		//datuak jaso
				request.setCharacterEncoding("UTF-8");//ENIEAK ETA ONDO IRAKURTZEKO
				String jsonActividad = request.getParameter("actividad");
				
				System.out.println(jsonActividad);
				JSONObject jsonObject = new JSONObject(jsonActividad);
				
				//komiki objetua sortu
				Actividad actividad = new Actividad();
				
				
				actividad.setDias(jsonObject.getString("dias"));
				actividad.setHoras(Integer.parseInt(jsonObject.getString("horas")));
				actividad.setMaxParticipantes(Integer.parseInt(jsonObject.getString("maxParticipantes")));
				actividad.setPrecio(Double.parseDouble(jsonObject.getString("precio")));
				
				try {
					actividad.setFecha_inicio(simpleDateFormat.parse(jsonObject.getString("fecha_inicio")));
				} catch (Exception e) {
					e.printStackTrace();
				}		
				
				actividad.setId(jsonObject.getString("id"));
				actividad.setIscripciones(jsonObject.getString("inscripciones"));				
				actividad.setNombre(jsonObject.getString("nombre"));
				
				
				
				ModeloActividad mActividad = new ModeloActividad();
				
				mActividad.insert(actividad);
				
				
					try {
						mActividad.getConexion().close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				
					response.setHeader("Acess-Control-Allow-Origin", "");//json deia denean ez da behar
	}

}
