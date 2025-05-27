package com.codigo.comprasproductosglassfish;

import java.util.*;

public class BaseDatosSimulada {
    private static final List<Producto> productos = new ArrayList<>();

    static {
        productos.add(new Producto("Laptop", 2500.0, 5));
        productos.add(new Producto("Mouse", 80.0, 20));
        productos.add(new Producto("Teclado", 150.0, 10));
        productos.add(new Producto("Monitor", 900.0, 3));
        productos.add(new Producto("Parlantes", 300.0, 8));
        productos.add(new Producto("Impresora", 600.0, 4));
        productos.add(new Producto("USB 32GB", 45.0, 25));
        productos.add(new Producto("Disco Duro", 380.0, 6));
        productos.add(new Producto("Router", 220.0, 7));
        productos.add(new Producto("Cámara Web", 130.0, 9));
    }

    public static List<Producto> obtenerProductos() {
        return productos;
    }

    public static Producto obtenerProductoPorNombre(String nombre) {
        for (Producto p : productos) {
            if (p.getNombre().equalsIgnoreCase(nombre)) {
                return p;
            }
        }
        return null;
    }
}
