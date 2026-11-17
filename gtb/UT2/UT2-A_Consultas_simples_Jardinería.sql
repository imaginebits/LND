1. Sacar el código de oficina y la ciudad donde hay oficinas.
    SELECT CodigoOficina,Ciudad FROM Oficinas;

2. Sacar cuántos empleados hay en la compañía.
    SELECT COUNT(*) AS Num_Empleados from Empleados;

3. Sacar cuántos clientes tiene cada país.
    SELECT Pais, COUNT(*) AS Num_Clientes from Clientes GROUP BY Pais;

4. Sacar cual fue el pago medio en 2005 (pista: Usar la función YEAR de mysql)
    SELECT AVG(Cantidad) AS Pago_Medio FROM Pagos WHERE YEAR(FechaPago)='2006';

5. Sacar cuántos pedidos están en cada estado ordenado descendentemente por el
número de pedidos.
    SELECT Estado, COUNT(*) AS Num_Pedido FROM Pedidos GROUP BY Estado ORDER BY DESC Num_Pedido DESC;

6. Sacar el precio del producto más caro y del más barato
    SELECT MAX(PrecioUnidad), MIN(PrecioUnidad) from DetallePedidos;

7. Sacar la ciudad y el teléfono de las oficinas de Estados Unidos
    SELECT Ciudad,Telefono FROM Oficinas WHERE Pais='EEUU';

8. Sacar el nombre, los apellidos y el email de los empleados a cargo de Alberto Soria.
    SELECT nombre,apellido1,Apellido2,Email FROM Empleados WHERE CodigoJefe='2';

9. Sacar el cargo, nombre, apellidos y email del jefe de la empresa.
    SELECT puesto,nombre,apellido1,Apellido2,Email FROM Empleados WHERE Codigojefe IS NULL;

10. Sacar el nombre, apellidos y cargo de aquellos que no sean representantes de
ventas.
    SELECT nombre,Apellido1,Apellido2,Puesto FROM Empleados WHERE Puesto NOT LIKE 'Representante Ventas';

11. Sacar el número de clientes que tiene la empresa.
    SELECT COUNT(*) AS Total_Clientes from Clientes;
    o
    SELECT COUNT(CodigoCliente) AS Total_Clientes from Clientes;

12. Sacar el nombre de los clientes españoles.
    SELECT NombreClientes AS Clientes_ES FROM Clientes WHERE Pais = 'Spain' OR Pais = 'Espaa';

13. Sacar cuántos clientes tiene cada país.
   REVISAR SELECT NombreContacto COUNT(*) AS Clientes_Pais FROM Clientes WHERE Pais = 'Spain' OR Pais = 'Espaa';

14. Sacar cuántos clientes tiene la ciudad de Madrid.
    SELECT COUNT(*) AS Clientes_Madrid From Clientes WHERE Ciudad = 'Madrid';
    o
    SELECT COUNT(COdigoCliente) AS Clientes_Madrid From Clientes WHERE Ciudad = 'Madrid';

15. Sacar cuántos clientes tienen las ciudades que empiezan por M.
    SELECT Ciudad, COUNT(*) AS Ciudad_M From Clientes WHERE Ciudad LIKE 'M%' GROUP BY Ciudad;

    SELECT Ciudad, COUNT(CodigoCliente) AS Ciudad_M From Clientes WHERE Ciudad LIKE 'M%' GROUP BY Ciudad;

16. Sacar el código de empleado y el número de clientes al que atiende cada
representante de ventas.
    SELECT 

17. Sacar el número de clientes que no tiene asignado representante de ventas.
18. Sacar cuál fue el primer y último pago que hizo algún cliente.
19. Sacar el código de cliente de aquellos clientes que hicieron pagos en 2008.
20. Sacar los distintos estados por los que puede pasar un pedido.

21. Sacar el número de pedido, código de cliente, fecha requerida y fecha de entrega
de los pedidos que no han sido entregados a tiempo.

22. Sacar cuántos productos existen en cada codigo de pedido.


23. Sacar un listado de los 20 códigos de productos más pedidos ordenado por
cantidad pedida. (pista: Usar el filtro LIMIT de MySQL)


24. Sacar el número de pedido, código de cliente, fecha requerida y fecha de entrega
de los pedidos cuya fecha de entrega ha sido al menos dos días antes de la fecha
requerida. (pista: Usar la función addDate de MySQL)
    

25. Sacar la facturación que ha tenido la empresa en toda la historia, indicando la base
imponible, el IVA y el total facturado. NOTA: La base imponible se calcula sumando
el coste del producto por el número de unidades vendidas. El IV A , es el 18 % de la
base imponible, y el total, la suma de los dos campos anteriores.
26. Sacar la misma información que en la pregunta anterior, pero agrupada por código
de producto filtrada por los códigos que empiecen por FR.