package com.dao;

import com.model.Buyer;



import java.util.List;

public interface BuyerDao {

    public List<Buyer> getAll();

    public void save(Buyer buyer);

    public Buyer get(int buyerId);

    public void update(Buyer buyer);

    public void delete(int buyerId);

    public List<Buyer> getAll(String buyerName);
}
