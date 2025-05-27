<%@ page import="java.util.*, com.codigo.comprasproductosglassfish.ItemCompra" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Resumen de Compras</title>
    <style>
        table { margin: 20px auto; border-collapse: collapse; width: 70%; }
        th, td { padding: 10px; border: 1px solid #ccc; text-align: center; }
        h2, h3 { text-align: center; }
    </style>
</head>
<body>

<h2>Resumen de Compra Realizada</h2>
<p style="text-align:center;">¡Producto agregado exitosamente!</p>

<%
    List<ItemCompra> carrito = (List<ItemCompra>) session.getAttribute("carrito");
    double totalGeneral = 0;
%>

<h3>Productos Comprados</h3>
<table>
    <tr>
        <th>Producto</th>
        <th>Precio (S/)</th>
        <th>Cantidad</th>
        <th>Subtotal (S/)</th>
    </tr>
    <%
        for (ItemCompra item : carrito) {
            double subtotal = item.getSubtotal();
            totalGeneral += subtotal;
    %>
    <tr>
        <td><%= item.getNombre() %></td>
        <td><%= item.getPrecio() %></td>
        <td><%= item.getCantidad() %></td>
        <td><%= subtotal %></td>
    </tr>
    <% } %>
    <tr>
        <td colspan="3"><strong>Total General</strong></td>
        <td><strong>S/ <%= totalGeneral %></strong></td>
    </tr>
</table>

<div style="text-align:center;">
    <a href="index.jsp">Seguir comprando</a>
</div>

</body>
</html>
