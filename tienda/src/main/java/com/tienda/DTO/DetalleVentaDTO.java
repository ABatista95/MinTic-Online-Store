package com.tienda.DTO;

public class DetalleVentaDTO {
	private Integer codigoDetalleVentas;
    private Integer cantidadProducto;
    private Integer codigoProducto;
    private Integer codigoVenta;
    private Double valorTotal;
    private Double valorVenta;
    private Double valorIva;
    
    
	public Integer getCodigoDetalleVenta() {
		return codigoDetalleVentas;
	}
	public void setCodigoDetalleVentas(Integer codigoDetalleVentas) {
		this.codigoDetalleVentas = codigoDetalleVentas;
	}
	public Integer getCantidadProducto() {
		return cantidadProducto;
	}
	public void setCantidadProducto(Integer cantidadProducto) {
		this.cantidadProducto = cantidadProducto;
	}
	public Integer getCodigoProducto() {
		return codigoProducto;
	}
	public void setCodigoProducto(Integer codigoProducto) {
		this.codigoProducto = codigoProducto;
	}
	public Integer getCodigoVenta() {
		return codigoVenta;
	}
	public void setCodigoVenta(Integer codigoVenta) {
		this.codigoVenta = codigoVenta;
	}
	
	public Double getValorTotal() {
		return valorTotal;
	}
	public void setValorTotal(Double valorTotal) {
		this.valorTotal = valorTotal;
	}
	public Double getValorVenta() {
		return valorVenta;
	}
	public void setValorVenta(Double valorVenta) {
		this.valorVenta = valorVenta;
	}
	public Double getValorIva() {
		return valorIva;
	}
	public void setValorIva(Double valorIva) {
		this.valorIva = valorIva;
}
}
