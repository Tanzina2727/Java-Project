package com.dao;


import com.model.Cart;

import com.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class CartDaoImpl implements CartDao {

    private final SessionFactory sessionFactory;

    public CartDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Cart> getAll() {
        Session session = this.sessionFactory.getCurrentSession();
        Query<Cart> cartQuery = session.createQuery("from Cart", Cart.class);
        List<Cart> carts = cartQuery.getResultList();
        return carts == null ? new ArrayList<Cart>() : carts;
    }

    @Override
    public void save(Cart cart) {
        Session session = this.sessionFactory.getCurrentSession();
        session.save(cart);
    }

    @Override
    public Cart get(int cartId) {
        Session session = this.sessionFactory.getCurrentSession();
        return session.get(Cart.class, cartId);
    }

    @Override
    public void update(Cart cart) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(cart);
    }

    @Override
    public void delete(int cartId) {
        Cart cart = get(cartId);
        sessionFactory.getCurrentSession().delete(cart);
    }

}
