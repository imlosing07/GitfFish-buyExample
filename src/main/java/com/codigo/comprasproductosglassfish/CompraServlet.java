package com.codigo.comprasproductosglassfish;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.*;

@WebServlet(name = "CompraServlet", urlPatterns = {"/comprar"})
public class CompraServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("producto");
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));

        Producto producto = BaseDatosSimulada.obtenerProductoPorNombre(nombre);

        if (producto == null || cantidad <= 0 || cantidad > producto.getStock()) {
            String error = "Error: ";
            if (producto == null) error += "Producto no encontrado.";
            else if (cantidad <= 0) error += "Ingrese una cantidad positiva.";
            else error += "Stock insuficiente. Quedan " + producto.getStock();
            request.setAttribute("mensaje", error);
            request.getRequestDispatcher("error.jsp").forward(request, response);
            return;
        }

        producto.reducirStock(cantidad);
        double totalCompra = producto.getPrecio() * cantidad;

        HttpSession session = request.getSession();
        List<ItemCompra> historial = (List<ItemCompra>) session.getAttribute("carrito");

        if (historial == null) {
            historial = new ArrayList<>();
        }
        historial.add(new ItemCompra(producto.getNombre(), producto.getPrecio(), cantidad));
        session.setAttribute("carrito", historial);

        request.setAttribute("totalCompra", totalCompra);
        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }
}
