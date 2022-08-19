package com.dao;

import com.model.Cart;

import java.util.List;

public interface CartDao {

    public List<Cart> getAll();

    public void save(Cart cart);

    public Cart get(int cartId);

    public void update(Cart cart);

    public void delete(int cartId);


}
