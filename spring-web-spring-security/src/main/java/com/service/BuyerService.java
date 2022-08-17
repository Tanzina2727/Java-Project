package com.service;

import com.model.Buyer;
import com.model.Medicine;
import com.model.User;

import java.util.List;

public interface BuyerService {

    public List<Buyer> getAll();

    public void save(Buyer buyer);

    void saveBuyer(Buyer buyer);

    public Buyer get(int buyerId);

    public void update(Buyer buyer);

    public void delete(int buyerId);

    public List<Buyer> getAll(String buyerName);
}
