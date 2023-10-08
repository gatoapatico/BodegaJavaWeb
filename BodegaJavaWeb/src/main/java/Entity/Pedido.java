package Entity;

public class Pedido {

    private int id;
    private String fecha;
    private int usuarioId;
    private int metodoEnvio;
    private String direccionEntrega;
    private String fechaEntrega;
    private String horaEntrega;
    private String responsableDni;
    private String responsableNombre;
    private String numeroTarjetaPago;
    private double totalPago;
    private String codigoUnico;

    public Pedido() {

    }

    public Pedido(int id, String fecha, int usuarioId, int metodoEnvio, String direccionEntrega,
                  String fechaEntrega, String horaEntrega, String responsableDni, String responsableNombre,
                  String numeroTarjetaPago, double totalPago, String codigoUnico) {
        this.id = id;
        this.fecha = fecha;
        this.usuarioId = usuarioId;
        this.metodoEnvio = metodoEnvio;
        this.direccionEntrega = direccionEntrega;
        this.fechaEntrega = fechaEntrega;
        this.horaEntrega = horaEntrega;
        this.responsableDni = responsableDni;
        this.responsableNombre = responsableNombre;
        this.numeroTarjetaPago = numeroTarjetaPago;
        this.totalPago = totalPago;
        this.codigoUnico = codigoUnico;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(int usuarioId) {
        this.usuarioId = usuarioId;
    }

    public int getMetodoEnvio() {
        return metodoEnvio;
    }

    public void setMetodoEnvio(int metodoEnvio) {
        this.metodoEnvio = metodoEnvio;
    }

    public String getDireccionEntrega() {
        return direccionEntrega;
    }

    public void setDireccionEntrega(String direccionEntrega) {
        this.direccionEntrega = direccionEntrega;
    }

    public String getFechaEntrega() {
        return fechaEntrega;
    }

    public void setFechaEntrega(String fechaEntrega) {
        this.fechaEntrega = fechaEntrega;
    }

    public String getHoraEntrega() {
        return horaEntrega;
    }

    public void setHoraEntrega(String horaEntrega) {
        this.horaEntrega = horaEntrega;
    }

    public String getResponsableDni() {
        return responsableDni;
    }

    public void setResponsableDni(String responsableDni) {
        this.responsableDni = responsableDni;
    }

    public String getResponsableNombre() {
        return responsableNombre;
    }

    public void setResponsableNombre(String responsableNombre) {
        this.responsableNombre = responsableNombre;
    }

    public String getNumeroTarjetaPago() {
        return numeroTarjetaPago;
    }

    public void setNumeroTarjetaPago(String numeroTarjetaPago) {
        this.numeroTarjetaPago = numeroTarjetaPago;
    }

    public double getTotalPago() {
        return totalPago;
    }

    public void setTotalPago(double totalPago) {
        this.totalPago = totalPago;
    }

    public String getCodigoUnico() {
        return codigoUnico;
    }

    public void setCodigoUnico(String codigoUnico) {
        this.codigoUnico = codigoUnico;
    }
}
