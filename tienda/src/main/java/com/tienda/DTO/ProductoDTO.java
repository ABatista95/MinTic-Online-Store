package com.tienda.DTO;

public class ProductoDTO {
	private Integer codigo_producto;
    private String nombre_producto;
    private Integer nit_proveedor;
    private Integer precio_compra;
    private Integer ivacompra;
    private Integer precio_venta;
    
	public Integer getCodigo_producto() {
		return codigo_producto;
	}
	public void setCodigo_producto(Integer codigo_producto) {
		this.codigo_producto = codigo_producto;
	}
	public String getNombre_producto() {
		return nombre_producto;
	}
	public void setNombre_producto(String nombre_producto) {
		this.nombre_producto = nombre_producto;
	}
	public Integer getNit_proveedor() {
		return nit_proveedor;
	}
	public void setNit_proveedor(Integer nit_proveedor) {
		this.nit_proveedor = nit_proveedor;
	}
	public Integer getPrecio_compra() {
		return precio_compra;
	}
	public void setPrecio_compra(Integer precio_compra) {
		this.precio_compra = precio_compra;
	}
	public Integer getIvacompra() {
		return ivacompra;
	}
	public void setIvacompra(Integer ivacompra) {
		this.ivacompra = ivacompra;
	}
	public Integer getPrecio_venta() {
		return precio_venta;
	}
	public void setPrecio_venta(Integer precio_venta) {
		this.precio_venta = precio_venta;
	}
}
