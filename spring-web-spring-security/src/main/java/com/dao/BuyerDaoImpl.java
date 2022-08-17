package com.dao;

import com.model.Buyer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class BuyerDaoImpl implements BuyerDao {

    private final SessionFactory sessionFactory;

    public BuyerDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Buyer> getAll() {
        Session session = this.sessionFactory.getCurrentSession();
        Query<Buyer> buyerQuery = session.createQuery("from Buyer", Buyer.class);
        List<Buyer> buyers = buyerQuery.getResultList();
        return buyers == null ? new ArrayList<Buyer>() : buyers;
    }

    @Override
    public void save(Buyer buyer) {
        Session session = this.sessionFactory.getCurrentSession();
        session.save(buyer);
    }



    @Override
    public Buyer get(int buyerId) {
        Session session = this.sessionFactory.getCurrentSession();
        return session.get(Buyer.class, buyerId);
    }

    @Override
    public void update(Buyer buyer) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(buyer);
    }



    @Override
    public void delete(int buyerId) {
        Buyer buyer = get(buyerId);
        sessionFactory.getCurrentSession().delete(buyer);
    }

    @Override
    public List<Buyer> getAll(String buyerName) {
        Session session = sessionFactory.getCurrentSession();
        Query<Buyer> medsQuery = session.createQuery("from buyer where buyerName like '%" + buyerName  + "%'", Buyer.class);
        return medsQuery.getResultList();
    }
}
