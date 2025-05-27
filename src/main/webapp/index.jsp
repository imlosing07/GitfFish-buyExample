<%@ page import="java.util.*, com.codigo.*" %>
<%@ page import="com.codigo.comprasproductosglassfish.Producto" %>
<%@ page import="com.codigo.comprasproductosglassfish.BaseDatosSimulada" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tienda Online</title>
    <style>
        table { margin: 20px auto; border-collapse: collapse; width: 80%; }
        th, td { padding: 10px; border: 1px solid #ccc; text-align: center; }
        h2 { text-align: center; }
        form { text-align: center; margin: 20px; }
    </style>
</head>
<body>

<h2>Productos Disponibles</h2>
<table>
    <tr>
        <th>Producto</th>
        <th>Precio (S/)</th>
        <th>Stock</th>
    </tr>
    <%
        List<Producto> productos = BaseDatosSimulada.obtenerProductos();
        for (Producto p : productos) {
    %>
    <tr>
        <td><%= p.getNombre() %></td>
        <td>S/ <%= p.getPrecio() %></td>
        <td><%= p.getStock() %></td>
    </tr>
    <%
        }
    %>
</table>

<form action="comprar" method="post">
    <label>Producto:</label>
    <select name="producto">
        <% for (Producto p : productos) { %>
        <option value="<%= p.getNombre() %>"><%= p.getNombre() %></option>
        <% } %>
    </select>
    <label>Cantidad:</label>
    <input type="number" name="cantidad" required>
    <input type="submit" value="Comprar">
</form>

</body>
</html>
