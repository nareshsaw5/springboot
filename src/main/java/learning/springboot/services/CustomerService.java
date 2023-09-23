package learning.springboot.services;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@RestController
public class CustomerService {

    private List<Customer> createCustomerDB(){
        List<Customer> customers = new ArrayList<>();
        customers.add(new Customer(1, "Naresh"));
        customers.add(new Customer(2, "Suresh"));
        customers.add(new Customer(3, "Mahesh"));
        return customers;
    }


    @GetMapping(path="/customers", produces = "application/json")
    public List<Customer> getCustomers(){
        return createCustomerDB();
    }

}

