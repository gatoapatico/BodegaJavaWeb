document.addEventListener('click', function(e){
    if(e.target.dataset.black){
        document.getElementById('productos-header').click();
    }
    else if(e.target.dataset.login){
        document.getElementById('bg-black-wall').classList.toggle('hidden');
        document.getElementById('popup-login').classList.toggle('hidden');
    }
    else if(e.target.dataset.registrate){
        document.getElementById('popup-login').classList.toggle('hidden');
        document.getElementById('popup-registrate').classList.toggle('hidden');
    }
    else if(e.target.dataset.finalizar){
        document.getElementById('bg-black-wall').classList.toggle('hidden');
        document.getElementById('popup-star').classList.toggle('hidden');
    }
    else if(e.target.dataset.carrito){
        document.getElementById('carrito-header').click();
    }
    else if(e.target.dataset.agregar){

        const idProducto = e.target.dataset.productoid;

        $.ajax({
            url: 'CarritoController',
            type: 'POST',
            data: { action: "agregar", id: idProducto },
            success: function() {
                const nombre = e.target.parentNode.querySelector('.nombre').textContent;
                const precio = e.target.parentNode.querySelector('.precio').textContent;

                const newEl = document.createElement('div');
                newEl.classList.add('popup-agregar-producto');
                newEl.innerHTML = `
                    <p>
                        <i class="bi bi-cart-check-fill"></i>
                        Se agrego <span>${nombre}</span><br>(<span>${precio}</span>) al carrito de compras!
                    </p>
                `;
                document.getElementById('fixed').append(newEl);

                setTimeout(function(){
                    newEl.remove();
                }, 3000);

            },
            error: function() {
                console.log("No se agregó nada al carrito!");
            }
        });

    }
    else if(e.target.dataset.categoria){
        const categoria = e.target.dataset.categoria;
        const productos = document.getElementsByClassName('producto');

        for(let i = 0; i < productos.length; i++){
            if(productos[i].querySelector('#categoria').textContent === categoria){
                productos[i].classList.remove('hidden');
            }
            else {
                productos[i].classList.add('hidden');
            }
        }
    }
    else if(e.target.dataset.sub){
        const quantityValue = e.target.parentNode.querySelector('.num').textContent;
        if(quantityValue > 1){
            $.ajax({
                url: 'CarritoController',
                type: 'POST',
                data: { action: "sub", id: e.target.dataset.id },
                success: function() {
                    const quantityValue = e.target.parentNode.querySelector('.num').textContent;
                    const quantityNewValue = parseInt(quantityValue) - 1;
                    const price = parseFloat(e.target.parentNode.parentNode.parentNode.querySelector('.unidad').querySelector('span').textContent);

                    e.target.parentNode.querySelector('.num').textContent = quantityNewValue;
                    e.target.parentNode.parentNode.parentNode.querySelector('.subtotal').querySelector('span').textContent = (quantityNewValue * price).toFixed(2);

                    calcularTotal();
                },
                error: function() {
                    console.log("Sucedió un error!");
                }
            });
        }
    }
    else if(e.target.dataset.add){
        $.ajax({
            url: 'CarritoController',
            type: 'POST',
            data: { action: "add", id: e.target.dataset.id },
            success: function () {
                const quantityValue = e.target.parentNode.querySelector('.num').textContent;
                const quantityNewValue = parseInt(quantityValue) + 1;
                const price = parseFloat(e.target.parentNode.parentNode.parentNode.querySelector('.unidad').querySelector('span').textContent);

                e.target.parentNode.querySelector('.num').textContent = quantityNewValue;
                e.target.parentNode.parentNode.parentNode.querySelector('.subtotal').querySelector('span').textContent = (quantityNewValue * price).toFixed(2);

                calcularTotal();

            },
            error: function () {
                console.log("Sucedió un error!");
            }
        });
    }
    else if(e.target.dataset.remove){
        $.ajax({
            url: 'CarritoController',
            type: 'POST',
            data: { action: "remove", id: e.target.dataset.id },
            success: function() {
                e.target.parentNode.parentNode.parentNode.remove();
                calcularTotal();
            },
            error: function() {
                console.log("Sucedió un error!");
            }
        });
    }
    else if(e.target.dataset.envio) {
        const datos = document.getElementById('ux-identificacion');
        const inputs = datos.querySelectorAll('input');
        let cont = 0;

        const correo = inputs.item(0).value;
        const nombre = inputs.item(1).value;
        const apellidos = inputs.item(2).value;
        const documento = inputs.item(3).value;
        const telefono = inputs.item(4).value;

        inputs.forEach(input => {
            if(input.value === ''){
                input.parentNode.querySelector('b').classList.remove('hidden');
            }
            else {
                input.parentNode.querySelector('b').classList.add('hidden');
                cont++;
            }
        });

        if(cont == inputs.length){
            document.getElementById('correo-resumen').textContent = correo;
            document.getElementById('nombre-resumen').textContent = nombre;
            document.getElementById('apellidos-resumen').textContent = apellidos;
            document.getElementById('documento-resumen').textContent = documento;
            document.getElementById('telefono-resumen').textContent = telefono;

            document.getElementById('identificacion').querySelector('.contenido1').classList.add('hidden');
            document.getElementById('identificacion').querySelector('.contenido2').classList.remove('hidden');

            document.getElementById('envio').querySelector('.contenido1').classList.remove('hidden');
        }
    }
    else if(e.target.dataset.metodo){
        const metodo = e.target.dataset.metodo;
        switch(metodo){
            case "domicilio":
                document.getElementById('metodo-domicilio').classList.add('metodo-activo');
                document.getElementById('metodo-tienda').classList.remove('metodo-activo');
                break;
            case "tienda":
                document.getElementById('metodo-tienda').classList.add('metodo-activo');
                document.getElementById('metodo-domicilio').classList.remove('metodo-activo');
                break;
        }
    }
});

function calcularTotal() {
    const productos = document.getElementsByClassName('producto');
    let totalPrecio = 0;
    for(let i = 0; i < productos.length; i++){
        totalPrecio += parseFloat(productos.item(i).querySelector('.subtotal').querySelector('span').textContent);
    }
    document.getElementById('subtotal').textContent = `S/${totalPrecio.toFixed(2)}`;
    document.getElementById('total').textContent = `S/${totalPrecio.toFixed(2)}`;
}