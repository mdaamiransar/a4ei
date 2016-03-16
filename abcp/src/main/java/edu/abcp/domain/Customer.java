package edu.abcp.domain;

import javax.persistence.*;

@Entity
@Table(name="CUSTOMERS")
public class Customer {
    @Id
    @GeneratedValue
    private Long id;
 
    private String name;
 
    @ManyToOne
    private Bank bank;
 
    public Customer() {}
 
    public Customer(String name, Bank bank ) {
        this.name = name;
        this.bank = bank;
    }
 
    public Customer(String name) {
        this.name = name;
    }
 
    public Long getId() {
        return id;
    }
 
    public void setId(Long id) {
        this.id = id;
    }
 
    public String getName() {
        return name;
    }
 
    public void setName(String name) {
        this.name = name;
    }
 
    public Bank getBank() {
        return bank;
    }
 
    public void setBank(Bank bank) {
        this.bank = bank;
    }
 
    @Override
    public String toString() {
       return "Customer [id= " + id
            + ", name=" + name
            + ", bank=" + bank.getName() + "]";
    }
 
}