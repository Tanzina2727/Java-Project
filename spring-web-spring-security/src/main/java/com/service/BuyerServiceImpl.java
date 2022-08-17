package com.service;

import com.dao.BuyerDao;
import com.model.Buyer;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class BuyerServiceImpl implements BuyerService {

    private final BuyerDao buyerDao;

    public BuyerServiceImpl(BuyerDao buyerDao) {
        this.buyerDao = buyerDao;
    }

    @Override
    @Transactional(readOnly = true)
    public List<Buyer> getAll() {
        return buyerDao.getAll();
    }

    @Override
    public void save(Buyer buyer) {
        buyerDao.save(buyer);
    }

    @Override
    public void saveBuyer(Buyer buyer) {

    }

    @Override
    public Buyer get(int buyerId) {
        return buyerDao.get(buyerId);
    }

    @Override
    public void update(Buyer buyer) {
        buyerDao.update(buyer);
    }

    @Override
    public void delete(int id) {
        buyerDao.delete(id);
    }

    @Override
    public List<Buyer> getAll(String buyerName) {
        return buyerDao.getAll(buyerName);
    }
}
