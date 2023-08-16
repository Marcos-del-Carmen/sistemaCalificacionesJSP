package dao;

import beans.Calificaciones;
import beans.Materias;
import conexion.Conexion;
import java.util.*;
import java.sql.*;

public class CalificacionesDAO {
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private Calificaciones calificaciones;
    
    public List<Calificaciones> mostrar() throws ClassNotFoundException {
        String sql = "SELECT " +
                     "    a.Matricula, " +
                     "    CONCAT(a.Nombre, ' ', a.Paterno, ' ', a.Materno) AS NombreCompleto, " +
                     "    m.Nombre AS NombreMateria, " +
                     "    c.Parcial1, " +
                     "    c.Parcial2, " +
                     "    c.Parcial3, " +
                     "    ROUND(((c.Parcial1 + c.Parcial2 + c.Parcial3) / 3), 1) AS Promedio, " +
                     "    CASE " +
                     "        WHEN ROUND(((c.Parcial1 + c.Parcial2 + c.Parcial3) / 3), 1) < 8 THEN 8 " +
                     "        ELSE c.Extraordinario " +
                     "    END AS Extraordinario " +
                     "FROM alumnos a " +
                     "INNER JOIN calificaciones c ON a.Matricula = c.MatriculaAlumno " +
                     "INNER JOIN materias m ON c.ClaveMateria = m.ClaveMateria";

        List<Calificaciones> calificacion = new ArrayList<>();

        try {
            this.conn = Conexion.getConexion();
            this.ps = this.conn.prepareStatement(sql);
            this.rs = this.ps.executeQuery();

            while (this.rs.next()) {
                String matricula = this.rs.getString("Matricula");
                String nombreCompleto = this.rs.getString("NombreCompleto");
                String nombreMateria = this.rs.getString("NombreMateria");
                double parcial1 = this.rs.getDouble("Parcial1");
                double parcial2 = this.rs.getDouble("Parcial2");
                double parcial3 = this.rs.getDouble("Parcial3");
                double promedio = this.rs.getDouble("Promedio");
                double extraordinario = this.rs.getDouble("Extraordinario");
                //this.materias = new Materias(claveMat, nombre, cuatrimestre);
                //materia.add(this.materias);
                
                this.calificaciones = new Calificaciones(matricula, nombreCompleto, nombreMateria, parcial1, parcial2, parcial3, promedio, extraordinario);
                calificacion.add(this.calificaciones);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                this.conn.close();
                this.ps.close();
                this.rs.close();
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        return calificacion;
    }

}
