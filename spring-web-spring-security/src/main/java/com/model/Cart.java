package com.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "cart")
public class Cart {
    @Id
    @Column(name = "cart_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int cartId;

    @Column(name = "cart_meds_name", nullable = false)
    private String cartMedsName;

    @Column(name = "cart_meds_price", nullable = false)
    private String cartMedsPrice;

    @Column(name = "cart_meds_quantity", nullable = false)
    private String cartMedsQuantity;

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }
    public String getCartMedsName() {
        return cartMedsName;
    }

    public void setCartMedsName(String cartMedsName) {
        this.cartMedsName = cartMedsName;
    }

    public String getCartMedsPrice() {
        return cartMedsPrice;
    }

    public void setCartMedsPrice(String cartMedsPrice) {
        this.cartMedsPrice = cartMedsPrice;
    }

    public String getCartMedsQuantity() {
        return cartMedsQuantity;
    }

    public void setCartMedsQuantity(String cartMedsQuantity) {
        this.cartMedsQuantity = cartMedsQuantity;
    }



}
