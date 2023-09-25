package Entity;

import java.util.ArrayList;
import java.util.List;

public class Carrito {

    private List<CarritoItem> items;

    public Carrito() {
        this.items = new ArrayList<>();
    }

    public List<CarritoItem> obtenerItems() {
        return items;
    }

    public int contieneItem(int idItem) {
        for(int i = 0; i < items.size(); i++){
            if(items.get(i).getId() == idItem){
                return i;
            }
        }
        return -1;
    }

    public void add(CarritoItem item) {
        int currentIndex = contieneItem(item.getId());
        if(currentIndex >= 0){
            int currentCantidad = items.get(currentIndex).getCantidad();
            items.get(currentIndex).setCantidad(currentCantidad + 1);
        }
        else {
            items.add(item);
        }
    }

    public void sub(CarritoItem item) {
        int currentIndex = contieneItem(item.getId());
        if(currentIndex > 0){
            int currentCantidad = items.get(currentIndex).getCantidad();
            if(currentCantidad > 0) {
                items.get(currentIndex).setCantidad(currentCantidad - 1);
            }
        }
    }
}
