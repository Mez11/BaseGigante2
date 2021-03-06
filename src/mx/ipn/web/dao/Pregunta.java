/*
 * This java source file is generated by DAO4J v1.19
 * Generated on Mon Apr 11 17:55:12 CDT 2016
 * For more information, please contact b-i-d@163.com
 * Please check http://sourceforge.net/projects/dao4j/ for the latest version.
 */

package mx.ipn.web.dao;

/*
 * For Table Pregunta
 */
public class Pregunta implements java.io.Serializable, Cloneable {
   

    /**
	 * 
	 */
	private static final long serialVersionUID = 2630593536993502728L;

	/* idPregunta, PK */
    protected int idpregunta;

    /* pregunta */
    protected String pregunta;

    /* idExamen */
    protected int idexamen;

    /* Return the key object. */
   

    /* idPregunta, PK */
    public int getIdpregunta() {
        return idpregunta;
    }

    /* idPregunta, PK */
    public void setIdpregunta(int idpregunta) {
        this.idpregunta = idpregunta;
       
    }

    /* pregunta */
    public String getPregunta() {
        return pregunta;
    }

    /* pregunta */
    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    /* idExamen */
    public int getIdexamen() {
        return idexamen;
    }

    /* idExamen */
    public void setIdexamen(int idexamen) {
        this.idexamen = idexamen;
    }

    /* Indicates whether some other object is "equal to" this one. */
    public boolean equals(Object obj) {
        if (this == obj)
            return true;

        if (obj == null || !(obj instanceof Pregunta))
            return false;

        Pregunta bean = (Pregunta) obj;

        if (this.idpregunta != bean.idpregunta)
            return false;

        if (this.pregunta == null) {
            if (bean.pregunta != null)
                return false;
        }
        else if (!this.pregunta.equals(bean.pregunta)) 
            return false;

        if (this.idexamen != bean.idexamen)
            return false;

        return true;
    }

    /* Creates and returns a copy of this object. */
    public Object clone()
    {
        Pregunta bean = new Pregunta();
        bean.idpregunta = this.idpregunta;
        bean.pregunta = this.pregunta;
        bean.idexamen = this.idexamen;
        return bean;
    }

    /* Returns a string representation of the object. */
    public String toString() {
        String sep = "\r\n";
        StringBuffer sb = new StringBuffer();
        sb.append(this.getClass().getName()).append(sep);
        sb.append("[").append("idpregunta").append(" = ").append(idpregunta).append("]").append(sep);
        sb.append("[").append("pregunta").append(" = ").append(pregunta).append("]").append(sep);
        sb.append("[").append("idexamen").append(" = ").append(idexamen).append("]").append(sep);
        return sb.toString();
    }
}