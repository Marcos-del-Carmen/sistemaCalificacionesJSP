package beans;
public class Calificaciones {
    private String matricula;
    private String nombreCompleto;
    private String claveMat;
    private String nombreMat;
    private double p1;
    private double p2;
    private double p3;
    private double prom;
    private double extra;

    public Calificaciones() {
    }

    public Calificaciones(String matricula, String nombreCompleto, String nombreMat, double prom, double extra) {
        this.matricula = matricula;
        this.nombreCompleto = nombreCompleto;
        this.nombreMat = nombreMat;
        this.prom = prom;
        this.extra = extra;
    }

    public Calificaciones(String matricula, String nombreCompleto, String nombreMat, double p1, double p2, double p3, double prom, double extra) {
        this.matricula = matricula;
        this.nombreCompleto = nombreCompleto;
        this.nombreMat = nombreMat;
        this.p1 = p1;
        this.p2 = p2;
        this.p3 = p3;
        this.prom = prom;
        this.extra = extra;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getNombreCompleto() {
        return nombreCompleto;
    }

    public void setNombreCompleto(String nombreCompleto) {
        this.nombreCompleto = nombreCompleto;
    }

    public String getClaveMat() {
        return claveMat;
    }

    public void setClaveMat(String claveMat) {
        this.claveMat = claveMat;
    }

    public String getNombreMat() {
        return nombreMat;
    }

    public void setNombreMat(String nombreMat) {
        this.nombreMat = nombreMat;
    }

    public double getP1() {
        return p1;
    }

    public void setP1(double p1) {
        this.p1 = p1;
    }

    public double getP2() {
        return p2;
    }

    public void setP2(double p2) {
        this.p2 = p2;
    }

    public double getP3() {
        return p3;
    }

    public void setP3(double p3) {
        this.p3 = p3;
    }

    public double getProm() {
        return prom;
    }

    public void setProm(double prom) {
        this.prom = prom;
    }

    public double getExtra() {
        return extra;
    }

    public void setExtra(double extra) {
        this.extra = extra;
    }
    
    
    
}

