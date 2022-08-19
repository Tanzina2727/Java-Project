package com.service;

import com.dao.CartDao;
import com.model.Cart;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CartServiceImpl implements  CartService{

    private final CartDao cartDao;

    public CartServiceImpl(CartDao cartDao) {
        this.cartDao = cartDao;
    }


    @Override
    @Transactional(readOnly = true)
    public List<Cart> getAll() {
        return cartDao.getAll();
    }

    @Override
    public void save(Cart cart) {
        cartDao.save(cart);
    }

    @Override
    public Cart get(int cartId) {
        return cartDao.get(cartId);
    }

    @Override
    public void update(Cart cart) {
        cartDao.update(cart);
    }



    @Override
    public void delete(int cartId) {
        cartDao.delete(cartId);
    }


}
