declare namespace file="http://expath.org/ns/file";

(: Definición de variables necesarias :)
let $serial := "SN-646464#CO"
let $vault := doc("retro_vault.xml")

let $html :=
<html>
<head>
    <link rel="stylesheet" href="style.css"/>
    <title>Informe Consolidado Retro Vault</title>
</head>
<body>

    <h1>Hardware antes de 1985</h1>
    {
        for $item in $vault//Item
        where $item/@categoria="Hardware"
        and $item/AnioLanzamiento < 1985
        return
        <div class="seccion-hardware">
            <h2>{data($item/Nombre)}</h2>
            <p>Fabricante: {data($item/Fabricante)}</p>
            <p>Año: {data($item/AnioLanzamiento)}</p>
        </div>
    }

    <hr/>

    <h1>Objetos Estado 5</h1>
    {
        for $item in $vault//Item
        where $item/EstadoConservacion=5
        return
        <div class="seccion-estado">
            <h2>{data($item/Nombre)}</h2>
            <p>Valor: {data($item/ValorEstimado)} €</p>
        </div>
    }

    <hr/>

    {
        for $item in $vault//Item
        where $item/SerialNumber=$serial
        return
        <div class="seccion-certificado">
            <h1>Certificado de autenticidad</h1>
            <p>Nombre: {data($item/Nombre)}</p>
            <p>Fabricante: {data($item/Fabricante)}</p>
            <p>Serial: {data($item/SerialNumber)}</p>
        </div>
    }

</body>
</html>

return
file:write("resultado_total.html", $html)
