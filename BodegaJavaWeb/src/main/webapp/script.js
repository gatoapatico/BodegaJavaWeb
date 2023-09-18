document.addEventListener('click', function(e){
    if(e.target.dataset.black){
        document.getElementById('logo-header').click();
    }
    else if(e.target.dataset.comprar){
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
            e.target.parentNode.querySelector('.num').textContent = quantityValue - 1;
        }
    }
    else if(e.target.dataset.add){
        const quantityValue = e.target.parentNode.querySelector('.num').textContent;
        e.target.parentNode.querySelector('.num').textContent = parseInt(quantityValue) + 1;
    }
    else if(e.target.dataset.remove){
        e.target.parentNode.parentNode.parentNode.remove();
    }
});